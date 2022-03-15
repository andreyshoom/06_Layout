import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  ScrollController controller = ScrollController();
  final List<Widget> _data = List.generate(50, (index) {
    return CardsSimple(index: index.toString());
  });

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {});
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
      appBar: AppBar(
        title: const Text('Layout builder'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double _width = constraints.constrainWidth();
                print(_width);
                return _width > 500
                    ? GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          childAspectRatio: 10,
                        ),
                        itemBuilder: (context, index) => _data[index],
                        itemCount: _data.length,
                      )
                    : Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: GridView.builder(
                              scrollDirection: Axis.horizontal,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                childAspectRatio: 1,
                              ),
                              itemBuilder: (context, index) => _data[index],
                              itemCount: _data.length,
                            ),
                          ),
                          Expanded(
                            child: Column(),
                            flex: 4,
                          )
                        ],
                      );
              },
            ),
          )
        ],
      ),
    );
  }
}

class CardsSimple extends StatefulWidget {
  const CardsSimple({Key? key, required this.index}) : super(key: key);
  final String index;
  @override
  State<CardsSimple> createState() => _CardsSimpleState();
}

class _CardsSimpleState extends State<CardsSimple> {
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
      child: Card(
        child: Container(
          color: Colors.deepPurple[200],
        ),
      ),
    );
  }
}
