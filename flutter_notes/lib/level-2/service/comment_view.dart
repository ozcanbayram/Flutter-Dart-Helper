import 'package:flutter/material.dart';
import 'package:flutter_notes/level-2/service/comment_model.dart';
import 'package:flutter_notes/level-2/service/post_service.dart';

class CommentVeiw extends StatefulWidget {
  const CommentVeiw({super.key, this.postId});

  final int? postId;

  @override
  State<CommentVeiw> createState() => _CommentVeiwState();
}

class _CommentVeiwState extends State<CommentVeiw> {
  List<CommentModel>? _items;
  late final IPostService _postService;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _postService = PostService();
    fetchRelatedComments(widget.postId ?? 0);
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchRelatedComments(int postId) async {
    _changeLoading();
    _items = await _postService.fetchRelatedComments(postId);
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Comments'),
          actions: [
            _isLoading
                ? const CircularProgressIndicator()
                : const SizedBox.shrink()
          ],
        ),
        body: _items == null
            ? const Center(
                child: Text('Veriler Yükleniyor.'),
              )
            : ListView.builder(
                itemCount: _items?.length ?? 0,
                padding: const EdgeInsets.all(16),
                itemBuilder: (context, index) {
                  return Card(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: Colors.lightBlueAccent,
                                  fontWeight: FontWeight.w600),
                          _items?[index].email ?? 'veri yok'),
                      subtitle: Text(
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                          _items?[index].body ?? 'veri yok'),
                    ),
                  ));
                },
              ));
  }
}
