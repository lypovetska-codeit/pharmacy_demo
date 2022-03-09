import 'package:flutter/material.dart';
import 'package:pharmacy/ui/widget/handler_widget.dart';

class ScrollableBackfield extends StatefulWidget {
  final double initialChildSize;
  final double maxChildSize;
  final double minChildSize;
  final Widget background;
  final Widget foreground;

  const ScrollableBackfield({
    Key? key,
    required this.initialChildSize,
    required this.maxChildSize,
    required this.minChildSize,
    required this.background,
    required this.foreground,
  }) : super(key: key);

  @override
  State<ScrollableBackfield> createState() => _ScrollableBackfieldState();
}

class _ScrollableBackfieldState extends State<ScrollableBackfield> {
  BuildContext? draggableSheetContext;

  @override
  Widget build(BuildContext context) {
    if (draggableSheetContext != null) {
      DraggableScrollableActuator.reset(draggableSheetContext!);
    }
    return Stack(
      children: [
        widget.background,
        DraggableScrollableActuator(
          child: DraggableScrollableSheet(
            key: Key(
              widget.initialChildSize.toString(),
            ),
            initialChildSize: widget.initialChildSize,
            maxChildSize: widget.maxChildSize,
            minChildSize: widget.minChildSize,
            builder: (BuildContext context, ScrollController scrollController) {
              draggableSheetContext = context;
              return ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 14.0),
                      child: NotificationListener(
                        onNotification: (OverscrollIndicatorNotification overscroll) {
                          overscroll.disallowIndicator();
                          return true;
                        },
                        child: SingleChildScrollView(
                          controller: scrollController,
                          physics: const ClampingScrollPhysics(),
                          child: Container(
                            child: widget.foreground,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      child: HandlerWidget(),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
