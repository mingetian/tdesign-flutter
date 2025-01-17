import 'package:flutter/material.dart';

class TDTab extends Tab {
  /// 文字内容
  @override
  final String? text;

  /// 子widget
  @override
  final Widget? child;

  /// 图标
  @override
  final Widget? icon;

  /// 图标间距
  @override
  final EdgeInsetsGeometry iconMargin;

  /// tab高度
  @override
  final double? height;

  @override
  const TDTab(
      {Key? key,
      this.text,
      this.child,
      this.icon,
      this.height,
      this.iconMargin = const EdgeInsets.only(bottom: 10.0)})
      : super(
            key: key,
            text: text,
            child: child,
            icon: icon,
            height: height,
            iconMargin: iconMargin);

  @override
  Widget build(BuildContext context) {
    return Tab(
      key: key,
      text: text,
      child: child,
      icon: icon,
      iconMargin: iconMargin,
      height: height,
    );
  }
}
