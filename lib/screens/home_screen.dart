import 'package:flutter/material.dart';
import 'package:flutter_restapi/widgets/post_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
        return Container(
          child: PostCard(title: "Title", body: "Body here",),
        );
      }))
    );
  }
}