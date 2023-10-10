
import 'package:flutter/material.dart';

class FirstAppbar extends StatelessWidget {
  const FirstAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          // snap: true,
          floating: true,
          pinned: false,
          title: Text("appbar2", style: TextStyle(color: Colors.white)),
          expandedHeight: 250,
          flexibleSpace: Container(
            child: Image.network("https://picsum.photos/200/300"),
            color: Colors.red,
          ),
        ),
        SliverAppBar(
          pinned: true,
          title: Text("appbar", style: TextStyle(color: Colors.white)),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 20,
                  (context, index) => ListTile(
                leading: Icon(Icons.person),
                title: Text("$index"),
                trailing: Icon(Icons.account_balance),
              ),
            )),
      ],
    );
  }
}
