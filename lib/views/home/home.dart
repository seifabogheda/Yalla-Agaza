part of 'homeImports.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex =0;
  final tabs = [
    Search(),
    Favorite(),
    Booking(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 15,
        unselectedFontSize: 10,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search),title: Text('Search'),backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),title: Text('Favorite'),backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.av_timer_rounded),title: Text('Booking'),backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('Profile'),backgroundColor: Colors.blue)  ,
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
