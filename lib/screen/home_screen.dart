import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Color color;

  HomeScreen({required this.color, Key? key}) : super(key: key) {
    print("Widget Constructor 실행!!");
  }

  @override
  State<StatefulWidget> createState() {
    print("Widget createState() 실행!!");
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;

  @override
  void initState() {
    print("initState() 실행!!");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies() 실행!!");
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    print("deactive() 실행!");
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose() 실행!!");
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    print("didUpdateWidget() 실행");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("build() 실행!!");
    Container container = Container(
      width: 50.0,
      height: 50.0,
      color: widget.color,
      child: Center(
        child: Text(
          number.toString(),
        ),
      ),
    );
    print("container_id ${identityHashCode(container)}");
    return GestureDetector(
      onTap: (){
        setState(() {
          print("setState() 실행");
          number++;
        });
      },
      child: container,
    );
  }
}
