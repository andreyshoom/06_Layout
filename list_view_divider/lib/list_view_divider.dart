import 'package:flutter/material.dart';

class ListViewDivider extends StatefulWidget {
  const ListViewDivider({Key? key}) : super(key: key);

  @override
  State<ListViewDivider> createState() => _ListViewDividerState();
}

class _ListViewDividerState extends State<ListViewDivider> {
  List<Widget> data = List.generate(100, (index) {
    return SimpleCard(index: index.toString());
  });

  ScrollController controller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: ListView.separated(
              controller: controller,
              itemBuilder: (context, index) => data[index],
              separatorBuilder: (context, index) => const Divider(),
              itemCount: data.length,
            ))
          ],
        ),
      ),
    );
  }
}

class SimpleCard extends StatefulWidget {
  const SimpleCard({Key? key, required this.index}) : super(key: key);
  final String index;

  @override
  State<SimpleCard> createState() => _SimpleCardState();
}

class _SimpleCardState extends State<SimpleCard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('init ${widget.index}');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose ${widget.index}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListTile(
        title: Text(widget.index),
      ),
    );
  }
}
