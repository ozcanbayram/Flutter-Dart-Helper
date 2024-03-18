import 'package:flutter/material.dart';
import 'package:flutter_full_learn_one/service/comment_model.dart';
import 'package:flutter_full_learn_one/service/post_service.dart';

class CommentsLearnView extends StatefulWidget {
  const CommentsLearnView({super.key, this.postId});
  final int? postId;

  @override
  State<CommentsLearnView> createState() => _CommentsLearnViewState();
}

class _CommentsLearnViewState extends State<CommentsLearnView> {
  late final IPostService postService;
  bool _isLoading = false;
  List<CommentModel>? _commentsItem;

  @override
  void initState() {
    super.initState();
    postService = PostService();
    fetchItemsWithId(widget.postId ?? 0);
  }

  void changeLoading() {
    setState(() {
      _isLoading = !_isLoading; //her seferinde değeri tersine dönecek.
    });
  }

  Future<void> fetchItemsWithId(int postId) async {
    changeLoading();
    _commentsItem = await postService.fetchRelatedCommentWithPostId(postId);
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _commentsItem?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Text(_commentsItem?[index].email ?? ''),
          );
        },
      ),
    );
  }
}
