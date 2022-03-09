import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy/domain/model/category_id.dart';
import 'package:pharmacy/domain/model/tag.dart';
import 'package:pharmacy/ui/page/tags/tags_bloc.dart';
import 'package:pharmacy/ui/page/tags/tags_state.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:vicodin/vicodin.dart';

class TagsWidget extends StatelessWidget {
  const TagsWidget({
    Key? key,
    required this.onTap,
    required this.appComponent,
  }) : super(key: key);
  final ValueChanged<CategoryId> onTap;
  final Component appComponent;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TagsBloc>(
      create: (context) => appComponent.resolve(),
      child: BlocBuilder<TagsBloc, TagsState>(
        builder: (context, state) => state.map(
          loading: (_) => const Center(
            child: CircularProgressIndicator(
              color: AppColors.colorPrimary,
            ),
          ),
          loaded: (state) => _buildTags(state.items),
          error: (e) => Container(),
        ),
      ),
    );
  }

  Widget _buildTags(List<Tag> tags) {
    final middle = tags.length ~/ 2;
    final firstRow = tags.sublist(0, middle);
    final secondRow = tags.sublist(middle);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ...firstRow.map((e) => _buildTag(e)),
              ],
            ),
            Row(
              children: [
                ...secondRow.map((e) => _buildTag(e)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTag(Tag tag) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: Material(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        color: AppColors.colorPrimaryDark,
        child: InkWell(
          onTap: () {
            onTap(tag.categoryId);
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Image.network(
                  tag.imageUrl,
                  width: 16,
                  height: 16,
                  errorBuilder: (context, error, stackTrace) => SvgPicture.asset(
                    "assets/icons/search_empty.svg",
                    width: 16,
                    height: 16,
                  ),
                ),
                const SizedBox(width: 9),
                Text(
                  tag.title.toUpperCase(),
                  style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w800),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
