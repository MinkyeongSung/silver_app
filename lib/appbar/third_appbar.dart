
import 'package:flutter/material.dart';

class thirdAppBar extends StatelessWidget {
  const thirdAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container( // 모든 영역을 제어 가능함. (스택처럼 사용)
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://picsum.photos/id/${index + 50}/200/300"),
                fit: BoxFit.cover),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent, //투명
            appBar: AppBar(
              backgroundColor: Colors.transparent, // 앱바를 투명
              title: Text("Around"),
              leading: Icon(Icons.menu),
            ),
            body: Center(
              child: Text("Page $index"),
            ),
          ),
        );
      },
    );
  }
}
