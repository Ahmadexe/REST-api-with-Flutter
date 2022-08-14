import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
            borderRadius: BorderRadius.circular(10.0),
          ),
          height: MediaQuery.of(context).size.height * 0.15,
          child: Row(
            children: [
              Icon(Icons.person, color: Colors.grey),
              const SizedBox(width: 8,),
              Column(
                children: [
                  Text(
                    'Title',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Body',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              )
            ],
          ),    
      ),
    );
  }
}
