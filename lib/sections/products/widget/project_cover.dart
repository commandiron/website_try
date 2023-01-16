import 'package:flutter/material.dart';

class ProjectCover extends StatefulWidget {
  const ProjectCover({required this.asset, Key? key}) : super(key: key);

  final String asset;

  @override
  State<ProjectCover> createState() => _ProjectCoverState();
}

class _ProjectCoverState extends State<ProjectCover> {
  bool _isOnHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          _isOnHover = value;
        });
      },
      child: Image.asset(
        widget.asset,
      )
    );
  }
}
