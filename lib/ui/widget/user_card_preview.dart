import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/build_context_extensions.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/user/user_bloc.dart';
import 'package:pharmacy/ui/user/user_event.dart';
import 'package:pharmacy/ui/user/user_state.dart';
import 'package:pharmacy/ui/widget/dotted_text_button.dart';

class UserCardPreview extends StatelessWidget {
  const UserCardPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 2,
              child: state.map(
                loaded: (loadedState) => Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 12),
                      Text(
                        loadedState.user.map(
                          authorized: (user) => "Welcome, ${user.firstName}!",
                          guest: (_) => context.l10n.joinUsRationale,
                        ),
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppColors.textPrimaryColor,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Visibility(
                        visible: loadedState.user.map(authorized: (_) => false, guest: (_) => true),
                        child: DottedTextButton(
                          color: AppColors.textPrimaryColor,
                          onPressed: () {
                            context.read<UserBloc>().add(UserEvent.authorize());
                          },
                          child: Text(
                            context.l10n.joinUs,
                            style: const TextStyle(fontSize: 14, color: AppColors.textPrimaryColor),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                loading: (state) => const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.colorAccentLight,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                  ),
                  color: AppColors.colorAction,
                  border: Border.all(color: AppColors.grayscaleWhiteOpaqueColor),
                  boxShadow: const [BoxShadow(blurRadius: 10, offset: Offset(0, 4), color: Color(0xff793600))],
                ),
                padding: const EdgeInsets.all(24),
                height: 160,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.l10n.discountCardPlaceholder,
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColors.textPrimaryColor,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
