import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/base_model/base_model.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/complete_profile/complete_profile_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_in_dto/sign_in_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/repository/auth_repository.dart';

import '../../../../core/local/repository/local_storage_repository.dart';
import '../../../../shared/custom_message.dart';
import '../../../../shared/socket/domain/repository/repository.dart';
import '../../../../shared/socket/model/stock_model.dart/stock_model.dart';
import '../../../../shared/socket/providers/stocks_price.dart';
import '../../../../shared/states/app_loading_state.dart';

part 'profile_setup.g.dart';

@riverpod
class Profile extends _$Profile {
  @override
  AppLoadingState build() {
    return AppLoadingState();
  }

  Future<LoginData?> onSubmit({
    required String email,
    required String password,
    required String fullname,
    required String imageUrl,
  }) async {
    state = AppLoadingState.loading();
    try {
      final response = await ref
          .read(authRepository)
          .completeRegistration(
            CompleteProfileDto(
              email: email,
              password: password,
              name: fullname,
              imgUrl: imageUrl,
            ),
          );
      if (response.isSuccess) {
        state = AppLoadingState();
        await ref
            .read(localDataProvider)
            .setAccessToken(response.data?.accessToken ?? '');
        await ref
            .read(localDataProvider)
            .saveUserId(response.data?.user?.id ?? '');
        await ref
            .read(localDataProvider)
            .saveUserName(response.data?.user?.name ?? '');
        await ref
            .read(localDataProvider)
            .saveUser(response.data!.user.toJson());
        List<Map<String, dynamic>> stocks = [];
        ref.read(socketRepository).fetchStocks((data) {
          final updatedStocks = data;

          for (var updated in updatedStocks) {
            Stock stockItem = updated;

            stocks.add(stockItem.toJson());
          }
          ref
              .read(stocksManagerProvider.notifier)
              .watchStocks(
                data
                    .map(
                      (e) => Stock(
                        stockId: e.stockId,
                        symbol: e.symbol,
                        price: e.price ?? 0,
                      ),
                    )
                    .toList(),
              );
          ref.read(localDataProvider).saveStock(stocks);
        });

        return response.data!;
      } else {
        $showMessage(response.message, isError: true);
      }
      state = AppLoadingState();
    } catch (e) {
      state = AppLoadingState();
      debugPrint("errror $e");
    }
    return null;
  }
}
