import 'package:flutter/material.dart';

import 'ExplorePage.dart';

class CurvedBottomAppBarPage extends StatefulWidget {
  @override
  _CurvedBottomAppBarPageState createState() => _CurvedBottomAppBarPageState();
}

class _CurvedBottomAppBarPageState extends State<CurvedBottomAppBarPage> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);

  void _onItemTapped(int index) {
    _selectedIndex.value = index;
  }

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder<int>(
          valueListenable: _selectedIndex,
          builder: (context, value, _) {
            return _getSelectedWidget(value);
          },
        ),
      ),
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Color(0xffff6666),
        child: Image.asset(
          "assets/images/Logo.png",
          scale: 2,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 10.0,
        child: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildNavItem(Icons.search, "Explore", 0),
              _buildNavItem(Icons.favorite_border, "Saved", 1),

              GestureDetector(
                onTap: () => _onItemTapped(2), // Set the index for the "Trips" text
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ValueListenableBuilder<int>(
                    valueListenable: _selectedIndex,
                    builder: (context, value, _) {
                      return Text(
                        "Trips",
                        style: TextStyle(
                          color: value == 2 ? Color(0xffff6666) : Colors.black54,
                          fontSize: 12,
                        ),
                      );
                    },
                  ),
                ),
              ),

              _buildNavItem(Icons.message_outlined, "Inbox", 3),
              _buildNavItem(Icons.person_outline, "Profile", 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getSelectedWidget(int index) {
    switch (index) {
      case 0:
        return Explorepage();
      case 1:
        return Text('Saved Page');
      case 2:
        return Text('Trips');
      case 3:
        return Text('Inbox pg');
      case 4:
        return Text('Profile Page');
      default:
        return Text('Profile Page');
    }
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: ValueListenableBuilder<int>(
        valueListenable: _selectedIndex,
        builder: (context, value, _) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 28,
                color: value == index ? Color(0xffff6666) : Colors.black54,
              ),
              SizedBox(height: 10),
              Text(
                label,
                style: TextStyle(
                  color: value == index ? Color(0xffff6666) : Colors.black54,
                  fontSize: 12,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
