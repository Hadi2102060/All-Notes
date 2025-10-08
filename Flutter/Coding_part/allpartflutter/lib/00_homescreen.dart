import 'package:allpartflutter/02_TextWidgetScreen.dart';
import 'package:allpartflutter/03_ElevatedButton.dart';
import 'package:allpartflutter/04_image.dart';
import 'package:allpartflutter/05_ListView.dart';
import 'package:allpartflutter/06_Card.dart';
import 'package:allpartflutter/07_Container.dart';
import 'package:allpartflutter/08_Row.dart';
import 'package:allpartflutter/09_Column.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InteractiveHomescreen extends StatefulWidget {
  @override
  _InteractiveHomescreenState createState() => _InteractiveHomescreenState();
}

class _InteractiveHomescreenState extends State<InteractiveHomescreen> {
  int _selectedIndex = 0;
  final List<Widget> _widgetPages = [
    HomeGridPage(),
    StatsPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 151, 151, 232),
      appBar: AppBar(
        title: Text(
          'Interactive Dashboard',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF1D1E33),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: _widgetPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.analytics), label: 'Stats'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        backgroundColor: Color(0xFF1D1E33),
      ),
    );
  }
}

class HomeGridPage extends StatelessWidget {
  final List<Map<String, dynamic>> widgetItems = [
    {
      'title': 'Text Widget',
      'icon': Icons.text_fields,
      'color': Colors.orange,
      'value': 'Display Text',
    },
    {
      'title': 'ElevatedButton',
      'icon': Icons.touch_app,
      'color': Colors.green,
      'value': 'Click Me',
    },
    {
      'title': 'Image',
      'icon': Icons.image,
      'color': Colors.purple,
      'value': 'Show Image',
    },
    {
      'title': 'ListView',
      'icon': Icons.list,
      'color': Colors.blue,
      'value': 'Scrollable List',
    },
    {
      'title': 'Card',
      'icon': Icons.credit_card,
      'color': Colors.red,
      'value': 'Card Widget',
    },
    {
      'title': 'Container',
      'icon': Icons.crop_din,
      'color': Colors.green,
      'value': 'Box Model',
    },
    {
      'title': 'Row',
      'icon': Icons.view_module,
      'color': Colors.pink,
      'value': 'Horizontal Layout',
    },
    {
      'title': 'Column',
      'icon': Icons.view_stream,
      'color': Colors.grey,
      'value': 'Vertical Layout',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              _buildHeaderSection(),
              SizedBox(height: 24),

              // Main Grid Widgets
              _buildGridWidgets(context),
              SizedBox(height: 24),

              // Recent Activity Section
              _buildActivitySection(context),

              // Extra padding for bottom
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Good Morning!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Here\'s your dashboard',
          style: TextStyle(color: Colors.white70, fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildGridWidgets(BuildContext parentContext) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.75,
      ),
      itemCount: widgetItems.length,
      itemBuilder: (BuildContext gridContext, int index) =>
          _buildWidgetContainer(widgetItems[index], parentContext),
    );
  }

  Widget _buildActivitySection(BuildContext parentContext) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Activity',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 12),
        _buildActivityList(parentContext),
      ],
    );
  }

  Widget _buildWidgetContainer(
    Map<String, dynamic> item,
    BuildContext parentContext,
  ) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF1D1E33), item['color'].withOpacity(0.15)],
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            HapticFeedback.lightImpact();
            ScaffoldMessenger.of(parentContext).showSnackBar(
              SnackBar(
                content: Text('${item['title']} opened'),
                duration: Duration(milliseconds: 800),
              ),
            );
            _navigateToScreen(parentContext, item['title']);
          },
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: item['color'].withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(item['icon'], color: item['color'], size: 20),
                    ),
                    Icon(Icons.more_vert, color: Colors.white54, size: 20),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        item['title'],
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 4),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        item['value'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  // ..................navigation Part ........................

  void _navigateToScreen(BuildContext context, String title) {
    switch (title) {
      case 'Text Widget':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TextWidgetScreen()),
        );
        break;
      case 'ElevatedButton':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ElevatedButtonScreen()),
        );
        break;
      case 'Image':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ImageScreen()),
        );
        break;
      case 'ListView':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ListViewScreen()),
        );
        break;
      case 'Card':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CardScreen()),
        );
        break;
      case 'Container':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContainerScreen()),
        );
        break;
      case 'Row':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RowScreen()),
        );
        break;
      case 'Column':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ColumnScreen()),
        );
        break;
      default:
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Demo for $title (Coming soon!)')),
        );
    }
  }

  Widget _buildActivityList(BuildContext parentContext) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          _buildActivityItem(
            'Music Playback',
            'Now playing: Favorite Song',
            Icons.music_note,
            Colors.purple,
            parentContext,
          ),
          _buildDivider(),
          _buildActivityItem(
            'Workout Completed',
            '45 minutes • 350 calories',
            Icons.directions_run,
            Colors.red,
            parentContext,
          ),
          _buildDivider(),
          _buildActivityItem(
            'Message Received',
            'From: John Doe',
            Icons.message,
            Colors.blue,
            parentContext,
          ),
          _buildDivider(),
          _buildActivityItem(
            'Weather Updated',
            'Sunny • 28°C',
            Icons.wb_sunny,
            Colors.orange,
            parentContext,
          ),
        ],
      ),
    );
  }

  Widget _buildActivityItem(
    String title,
    String subtitle,
    IconData icon,
    Color color,
    BuildContext parentContext,
  ) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: color, size: 20),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.white70, fontSize: 14),
      ),
      trailing: Icon(Icons.chevron_right, color: Colors.white54),
      onTap: () {
        HapticFeedback.lightImpact();
        ScaffoldMessenger.of(parentContext).showSnackBar(
          SnackBar(
            content: Text('$title activity opened'),
            duration: Duration(milliseconds: 800),
          ),
        );
      },
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Divider(color: Colors.white12, height: 1),
    );
  }
}












class StatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          'Statistics Page',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          'Profile Page',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
