import 'package:flutter/material.dart';
import 'package:project/pro.dart';

void main(){
  runApp(Project());
}

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Pro();
  }
}
