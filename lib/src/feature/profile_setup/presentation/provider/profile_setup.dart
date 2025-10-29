import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/analytics/data/dto/market_login_dto/market_login_dto.dart';
import 'package:trader_gpt/src/feature/analytics/domain/repositroy/overview_repository.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/base_model/base_model.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/complete_profile/complete_profile_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/profile_update_dto/profile_update_dto.dart';
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
      final completer = Completer<void>();

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
      if (response.isSuccess != null && response.isSuccess!) {
        state = AppLoadingState();
        final response1 = await ref
            .read(overviewRepository)
            .marketDataLogin(
              MarketLoginDto(
                username: "traderverse_profile",
                password: "aX2Txl2yxt1ic0xs-@wXcw-ds0at\$sa-ofZwelad",
              ),
            );
        if (response1.accessToken.isNotEmpty) {
          await ref
              .read(localDataProvider)
              .setAccessTokenMarket(response1.accessToken);
          await ref
              .read(localDataProvider)
              .setRefreshTokenMarket(response1.refreshToken);
        }
        final response2 = await ref
            .read(overviewRepositoryNrm)
            .marketData2Login(
              SignIn(
                email: "traderverse_profile",
                password: "aX2Txl2yxt1ic0xs-@wXcw-ds0at\$sa-ofZwelad",
              ),
            );
        if (response2.data.accessToken.isNotEmpty) {
          await ref
              .read(localDataProvider)
              .setAccessTokenMarketNew(response2.data.accessToken);
          await ref
              .read(localDataProvider)
              .setRefreshTokenMarketNew(response2.data.refreshToken);
        }
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
          completer.complete();
        });
        await completer.future;
        state = AppLoadingState();
        return response.data!;
      } else {
        state = AppLoadingState();
        $showMessage(response.message, isError: true);
      }
      state = AppLoadingState();
    } catch (e) {
      state = AppLoadingState();
      debugPrint("errror $e");
    }
    return null;
  }

  Future<User?> updateProfile({
    required String image,
    required String name,
  }) async {
    state = AppLoadingState.loading();
    try {
      final response = await ref
          .read(authRepository)
          .updateProfile(ProfileUpdateDto(imgUrl: image, name: name));
      if (response.isSuccess != null && response.isSuccess!) {
        await ref
            .read(localDataProvider)
            .saveUserName(response.data?.name ?? '');
        await ref.read(localDataProvider).saveUser(response.data!.toJson());
        state = AppLoadingState();
        final response1 = await ref
            .read(overviewRepository)
            .marketDataLogin(
              MarketLoginDto(
                username: "traderverse_profile",
                password: "aX2Txl2yxt1ic0xs-@wXcw-ds0at\$sa-ofZwelad",
              ),
            );
        if (response1.accessToken.isNotEmpty) {
          await ref
              .read(localDataProvider)
              .setAccessTokenMarket(response1.accessToken);
        }
        final response2 = await ref
            .read(overviewRepositoryNrm)
            .marketData2Login(
              SignIn(
                email: "traderverse_profile",
                password: "aX2Txl2yxt1ic0xs-@wXcw-ds0at\$sa-ofZwelad",
              ),
            );
        if (response2.data.accessToken.isNotEmpty) {
          await ref
              .read(localDataProvider)
              .setAccessTokenMarketNew(response2.data.accessToken);
          await ref
              .read(localDataProvider)
              .setRefreshTokenMarketNew(response2.data.refreshToken);
        }
        return response.data;
      } else {
        $showMessage(response.message, isError: true);
      }
      state = AppLoadingState();
    } catch (e) {
      $showMessage(e.toString(), isError: true);
      state = AppLoadingState();
      debugPrint("errror $e");
    }
    return null;
  }
}
