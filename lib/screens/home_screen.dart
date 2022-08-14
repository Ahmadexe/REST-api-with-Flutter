import 'package:flutter/material.dart';
import 'package:flutter_restapi/models/post.dart';
import 'package:flutter_restapi/services/api_service.dart';
import 'package:flutter_restapi/widgets/post_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Post>? posts;
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  
  void getData() async {
    posts = await ApiService().getPosts();
    if (posts != null) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: 
        isLoading ? const Center(child: CircularProgressIndicator()) :
        ListView.builder(
        itemCount: posts?.length ?? 0,
        itemBuilder: ((context, index) {
        return PostCard(title: posts![index].title, body: posts![index].body ?? '',);
      }))
    );
  }
}