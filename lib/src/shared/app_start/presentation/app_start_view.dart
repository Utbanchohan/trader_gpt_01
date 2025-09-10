
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/shared/widgets/loading_widget.dart';
import '../../../core/theme/app_colors.dart';
import '../providers/app_start.dart';

class AppStartupWidget extends ConsumerWidget {
  const AppStartupWidget({super.key, required this.onLoaded});

  final WidgetBuilder onLoaded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartupState = ref.watch(appStartupProvider);
    return appStartupState.when(
      loading:
          () => Container(color: AppColors.pageColor, child: Center(child: LoadingWidget())),
      error: (e, st) => Container(color: AppColors.pageColor, ),
      data: (_) => onLoaded(context),
    );
  }
}
