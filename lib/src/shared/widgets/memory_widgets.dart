import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/my_profile/Presentation/provider/delete_memory/delete_memory.dart';
import 'package:trader_gpt/src/shared/widgets/loading_widget.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/chat/domain/model/memory_model/memory_model.dart';
import '../../feature/my_profile/Presentation/provider/memory_provider/memory_provider.dart';

class MemoryWidgets extends ConsumerStatefulWidget {
  final VoidCallback onClear;
  final VoidCallback onClose;
  MemoryModel? memory;

  MemoryWidgets({
    super.key,
    required this.onClear,
    required this.onClose,
    required this.memory,
  });

  @override
  ConsumerState<MemoryWidgets> createState() => _MemoryWidgetsState();
}

class _MemoryWidgetsState extends ConsumerState<MemoryWidgets> {
  bool deleteLoading = false;

  deleteMemory(String id) async {
    try {
      setState(() {
        deleteLoading = true;
      });
      var res = await ref.watch(deleteMemoryProvider.notifier).deleteMemory(id);

      setState(() {
        deleteLoading = false;
      });
      if (res != null) {
        setState(() {
          widget.memory!.memories!.removeWhere((ele) => ele.id == id);
        });
      }
    } catch (e) {
      setState(() {
        deleteLoading = false;
      });
    }
  }

  deleteAllMemory() async {
    try {
      setState(() {
        deleteLoading = true;
      });
      var res = await ref
          .watch(deleteMemoryProvider.notifier)
          .deleteAllMemory();

      setState(() {
        deleteLoading = false;
      });
      if (res != null) {
        setState(() {
          widget.memory = MemoryModel(
            userId: widget.memory!.userId,
            totalMemories: widget.memory!.totalMemories,
            limit: widget.memory!.limit,
            memories: [],
          );
        });
      }
    } catch (e) {
      setState(() {
        deleteLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 414,
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 22,
          top: 22,
        ),
        decoration: BoxDecoration(
          color: AppColors.bubbleColor, // Background dark blue
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MdSnsText(
                  "Memory",
                  color: AppColors.white,
                  variant: TextVariant.h2,
                  fontWeight: TextFontWeightVariant.h1,
                  decoration:
                      TextDecoration.none, // 👈 Yeh line underline hata degi
                ),
                GestureDetector(
                  onTap: widget.onClear,
                  child: Icon(Icons.close, size: 15.w),
                ),
              ],
            ),
            SizedBox(height: 20),

            widget.memory != null &&
                    widget.memory!.memories != null &&
                    widget.memory!.memories!.isNotEmpty
                ? Column(
                    children: List.generate(widget.memory!.memories!.length, (
                      index,
                    ) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.color091224,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: MdSnsText(
                                  widget.memory!.memories![index].memory ?? "",
                                  color: AppColors.color0xB3FFFFFF,
                                  variant: TextVariant.h2,
                                  fontWeight: TextFontWeightVariant.h4,
                                  textOverflow: TextOverflow.ellipsis,
                                  decoration: TextDecoration.none,
                                  maxLines: 1,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  deleteMemory(
                                    widget.memory!.memories![index].id!,
                                  );
                                },
                                child: deleteLoading
                                    ? SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: LoadingWidget(
                                          height: 20,
                                          width: 20,
                                          color: AppColors.white,
                                        ),
                                      )
                                    : Image.asset(
                                        Assets.images.trash.path,
                                        height: 21,
                                        width: 19,
                                      ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  )
                : SizedBox(),

            SizedBox(height: 20),

            Visibility(
              visible:
                  widget.memory != null &&
                  widget.memory!.memories != null &&
                  widget.memory!.memories!.isNotEmpty,
              child: SizedBox(
                height: 43.h,
                width: 146.w,
                child: ElevatedButton(
                  onPressed: () {
                    deleteAllMemory();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.color203864,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.center,
                  ),
                  child: deleteLoading
                      ? SizedBox(
                          height: 20,
                          width: 20,
                          child: LoadingWidget(
                            height: 20,
                            width: 20,
                            color: AppColors.white,
                          ),
                        )
                      : MdSnsText(
                          "Clear Memory",
                          color: AppColors.white,
                          variant: TextVariant.h2,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
