import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_in_dto/sign_in_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_up_dto/sign_up.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/repository/auth_repository.dart';
import 'package:trader_gpt/src/shared/socket/domain/repository/repository.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';

import '../../../../core/local/repository/local_storage_repository.dart';
import '../../../../shared/custom_message.dart';
import '../../../../shared/socket/providers/stocks_price.dart';
import '../../../../shared/states/app_loading_state.dart';
import '../../../analytics/data/dto/market_login_dto/market_login_dto.dart';
import '../../../analytics/domain/repositroy/overview_repository.dart';

part 'sign_in.g.dart';

@riverpod
class Login extends _$Login {
  @override
  AppLoadingState build() {
    return AppLoadingState();
  }

  Future<LoginData?> onSubmit({
    required String email,
    required String password,
  }) async {
    state = AppLoadingState.loading();
    try {
      final completer = Completer<void>();

      final response = await ref
          .read(authRepository)
          .login(SignIn(email: email.toLowerCase(), password: password));
      if (response.isSuccess != null && response.isSuccess!) {
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

        bool isEmailVerified = false;
        if (response.data?.user?.isVerified ?? false) {
          isEmailVerified = true;
        }
        if (isEmailVerified) {
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
          ref.read(socketRepository).fetchStocks((data) async {
            final updatedStocks = data;

            for (var updated in updatedStocks) {
              Stock stockItem = updated;

              stocks.add(stockItem.toJson());
            }
            // ref
            //     .read(stocksManagerProvider.notifier)
            //     .watchStocks(
            //       updatedStocks
            //           .map(
            //             (e) => Stock(
            //               stockId: e.stockId,
            //               symbol: e.symbol,
            //               price: e.price ?? 0,
            //             ),
            //           )
            //           .toList(),
            //     );
            await ref.read(localDataProvider).saveStock(stocks);
            completer.complete();
          });
          await completer.future;
          state = AppLoadingState();
          return response.data!;
        } else {
          $showMessage("Email is not verified", isError: true);
        }
      } else {
        $showMessage(response.message, isError: true);
      }
      state = AppLoadingState();
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        try {
          $showMessage(e.response!.data!['message'], isError: true);
        } catch (e) {
          $showMessage("Something went wrong", isError: true);
        }
      } else if (e.type == DioExceptionType.connectionError) {
        print('❌ Network error');
      } else {
        print('❌ Unknown error: ${e.message}');
      }

      state = AppLoadingState();
      debugPrint("errror $e");
    }
    return null;
  }
}
