import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with SingleTickerProviderStateMixin{

  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState(){
    // TODO implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000)
    );
    _animation = Tween(
      begin: 150,
      end: 120,
    ).animate(CurvedAnimation(
        parent: _controller,
        curve:Interval(
          0 , 1, curve: Curves.elasticIn
        )
    )..addStatusListener((status) {
      if(status == AnimationStatus.completed){
        _controller.repeat(reverse: true);
      }
    })

    );
  }

  
 @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Studio'),
      ),
      body: AnimatedBuilder(
        animation: _animation,
        builder: (ctx,ch) => Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.only(
            top: _animation.value,
            left: 125
          ),
          child: Image.asset('assets/images/ic_launcher4.jpg'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: (){
            _controller.forward();
          },
        ),
    );
  }
}
