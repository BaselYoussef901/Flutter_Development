import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomTabs extends StatefulWidget {
  const BottomTabs({ super.key });

  @override
  State<BottomTabs> createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    // Container(color: Colors.red,),
    // Container(color: Colors.blue,),
    // Container(color: Colors.green,),
    // Container(color: Colors.purple,),
    // Container(color: Colors.yellow,),
    Container(alignment: Alignment.center, child: Text("Home Page"),),
    Container(alignment: Alignment.center, child: Text("Search Page"),),
    Container(alignment: Alignment.center, child: Text("Upload Page"),),
    Container(alignment: Alignment.center, child: Text("Reels Page"),),
    Container(alignment: Alignment.center, child: Text("Profile Page"),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(_selectedIndex == 0 ? 'assets/vectors/home-bold.svg' :'assets/vectors/home-outline.svg'),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(_selectedIndex == 1 ? 'assets/vectors/search-bold.svg' :'assets/vectors/search-outline.svg'),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(_selectedIndex == 2 ? 'assets/vectors/add-square-bold.svg' : 'assets/vectors/add-square-outline.svg'),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(_selectedIndex == 3 ? 'assets/vectors/video-play-bold.svg' : 'assets/vectors/video-play-outline.svg'),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(_selectedIndex == 4 ? 'assets/images/profile-bold.png' : 'assets/images/profile-outline.png')),
                    shape: BoxShape.circle
                ),
              ),
              label: ''
          ),
        ],
      ),
    );
  }
}