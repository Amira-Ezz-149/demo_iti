import 'package:demo_iti/models/post.dart';
import 'package:demo_iti/services/post_service.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  bool waiting = true;

  List<Post> posts = [];

  getListOfPosts() async {
    posts = await PostService().getPosts();
    waiting = false;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getListOfPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('post screen'),
        ),
        body: waiting
            ? Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.blue,
                ),
              )
            : ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.blue,
                    height: 60,
                    margin: EdgeInsets.all(5.0),
                    child: Card(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('${posts[index].title}', style: TextStyle(fontSize: 18),textAlign: TextAlign.center
                          ,),
                      ),
                    ),
                  );
                },
              ));
  }
}
