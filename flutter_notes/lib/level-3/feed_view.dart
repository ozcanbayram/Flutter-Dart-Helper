import 'package:flutter/material.dart';
import 'package:flutter_notes/level-2/service/post_model.dart';
import 'package:flutter_notes/level-2/service/post_service.dart';

class FeedView extends StatefulWidget {
  const FeedView({super.key});

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView>
    with AutomaticKeepAliveClientMixin {
  //! bu mixin verileri her seferinde yeniden servisten almamak bir kez alındıktan sonra için tutmaya yarar
  final IPostService _postService = PostService();

  //* floatActionButton'a basınca set state anında bu sayfanın yeniden yazılmaması için:
  late final Future<List<PostModel>?> _itemFuture;
  @override
  void initState() {
    super.initState();
    _itemFuture = _postService.fetchPostItemsAdvence();
  }

  @override
  Widget build(BuildContext context) {
    //!  AutomaticKeepAliveClientMixin ile gelen gereklilik
    super.build(context);
    //!
    return Scaffold(
      // appBar: AppBar(),
      body: _FeedFeatureBuilder(itemFuture: _itemFuture),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //* burası çalışınca da sayfalın yenilenmesini istemiyoruz.
          setState(() {});
        },
      ),
    );
  }

  @override //!  AutomaticKeepAliveClientMixin ile gelen override
  bool get wantKeepAlive => true;
  //* Böylece tab bar üzerinde sayfa değişikliği yapılınca servise tekrar çıkma gereği duyulmaz ve verile elde tutulmuş olur.
}

class _FeedFeatureBuilder extends StatelessWidget {
  const _FeedFeatureBuilder({
    required Future<List<PostModel>?> itemFuture,
  }) : _itemFuture = itemFuture;

  final Future<List<PostModel>?> _itemFuture;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PostModel>?>(
      // future: _postService.fetchPostItemsAdvence(),
      future:
          _itemFuture, //* bu sayede sayfadaki veriler yeni initState işlemlerinden etkilenmez.
      builder:
          (BuildContext context, AsyncSnapshot<List<PostModel>?> snapshot) {
        switch (snapshot.connectionState) {
          //* hangi durumda ne yapacağını belirleriz.
          case ConnectionState.none:
            return const Placeholder();
          case ConnectionState.waiting:
            return const Center(child: CircularProgressIndicator());
          case ConnectionState.active:
            return const Center(child: CircularProgressIndicator());
          case ConnectionState.done:
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      subtitle: Text(snapshot.data?[index].body ?? ''),
                    ),
                  );
                },
              );
            } else {
              return const Placeholder();
            }
        }
      },
    );
  }
}
