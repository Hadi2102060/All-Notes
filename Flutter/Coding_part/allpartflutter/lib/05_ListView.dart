import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  // List of all major scroll-related widgets in Flutter
  final List<ScrollWidgetItem> scrollWidgets = [
    ScrollWidgetItem(
      name: 'SingleChildScrollView',
      description:
          'Scroll a single child widget (like Column) vertically or horizontally',
      widgetType: ScrollWidgetType.singleChildScrollView,
      icon: Icons.view_column,
      color: Colors.blue,
    ),
    ScrollWidgetItem(
      name: 'ListView',
      description: 'Scrollable list of children with efficient rendering',
      widgetType: ScrollWidgetType.listView,
      icon: Icons.list,
      color: Colors.green,
    ),
    ScrollWidgetItem(
      name: 'GridView',
      description: 'Scrollable grid of children in rows and columns',
      widgetType: ScrollWidgetType.gridView,
      icon: Icons.grid_view,
      color: Colors.orange,
    ),
    ScrollWidgetItem(
      name: 'PageView',
      description: 'Page-based scrolling for full-screen pages or slides',
      widgetType: ScrollWidgetType.pageView,
      icon: Icons.slideshow,
      color: Colors.purple,
    ),
    ScrollWidgetItem(
      name: 'CustomScrollView',
      description: 'Custom scrolling with slivers for complex layouts',
      widgetType: ScrollWidgetType.customScrollView,
      icon: Icons.build,
      color: Colors.red,
    ),
    ScrollWidgetItem(
      name: 'Scrollbar',
      description: 'Adds a scrollbar indicator to any scrollable widget',
      widgetType: ScrollWidgetType.scrollbar,
      icon: Icons.move_to_inbox_outlined,
      color: Colors.teal,
    ),
    ScrollWidgetItem(
      name: 'RefreshIndicator',
      description: 'Pull-to-refresh gesture for scrollable content',
      widgetType: ScrollWidgetType.refreshIndicator,
      icon: Icons.refresh,
      color: Colors.amber,
    ),
    ScrollWidgetItem(
      name: 'NestedScrollView',
      description: 'Nested scrolling for coordinated inner/outer scrolls',
      widgetType: ScrollWidgetType.nestedScrollView,
      icon: Icons.layers,
      color: Colors.indigo,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text(
          'Flutter Scroll Widgets',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.white,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1D1E33), Color(0xFF0A0E21)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1D1E33), Color(0xFF0A0E21)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                // Hero Section
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  margin: EdgeInsets.only(bottom: 30),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF2D2E47), Color(0xFF1D1E33)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.school, size: 60, color: Colors.white70),
                      SizedBox(height: 16),
                      Text(
                        'Explore Scroll Widgets',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Discover all the powerful scroll widgets available in Flutter framework with interactive examples',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                // Grid of Scroll Widgets
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.9,
                  ),
                  itemCount: scrollWidgets.length,
                  itemBuilder: (context, index) {
                    return _buildWidgetCard(scrollWidgets[index], context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWidgetCard(ScrollWidgetItem widgetItem, BuildContext context) {
    return GestureDetector(
      onTap: () {
        _navigateToWidgetDetail(context, widgetItem);
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              widgetItem.color.withOpacity(0.3),
              widgetItem.color.withOpacity(0.1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: widgetItem.color.withOpacity(0.2),
              blurRadius: 15,
              offset: Offset(0, 5),
            ),
          ],
          border: Border.all(
            color: widgetItem.color.withOpacity(0.3),
            width: 1,
          ),
        ),
        child: Stack(
          children: [
            // Background Pattern
            Positioned(
              right: -20,
              top: -20,
              child: Icon(
                widgetItem.icon,
                size: 80,
                color: Colors.white.withOpacity(0.05),
              ),
            ),

            // Content
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: widgetItem.color.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          widgetItem.icon,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        widgetItem.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        widgetItem.description,
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white70,
                          height: 1.3,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),

                  // Explore Button
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                      color: widgetItem.color.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Explore',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 11,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToWidgetDetail(
    BuildContext context,
    ScrollWidgetItem widgetItem,
  ) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ScrollWidgetDetailScreen(widgetItem: widgetItem),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;
          var tween = Tween(
            begin: begin,
            end: end,
          ).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(position: offsetAnimation, child: child);
        },
        transitionDuration: Duration(milliseconds: 500),
      ),
    );
  }
}

// Model class for scroll widget items
class ScrollWidgetItem {
  final String name;
  final String description;
  final ScrollWidgetType widgetType;
  final IconData icon;
  final Color color;

  ScrollWidgetItem({
    required this.name,
    required this.description,
    required this.widgetType,
    required this.icon,
    required this.color,
  });
}

// Enum for different types of scroll widgets
enum ScrollWidgetType {
  singleChildScrollView,
  listView,
  gridView,
  pageView,
  customScrollView,
  scrollbar,
  refreshIndicator,
  nestedScrollView,
}

// Detail screen for each scroll widget
class ScrollWidgetDetailScreen extends StatefulWidget {
  final ScrollWidgetItem widgetItem;

  const ScrollWidgetDetailScreen({Key? key, required this.widgetItem})
    : super(key: key);

  @override
  State<ScrollWidgetDetailScreen> createState() =>
      _ScrollWidgetDetailScreenState();
}

class _ScrollWidgetDetailScreenState extends State<ScrollWidgetDetailScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _slideAnimation = Tween<Offset>(begin: Offset(0.0, 0.3), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeInOut,
          ),
        );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text(widget.widgetItem.name),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.white,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                widget.widgetItem.color.withOpacity(0.3),
                Color(0xFF0A0E21),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1D1E33), Color(0xFF0A0E21)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: SlideTransition(
                position: _slideAnimation,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Card
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(25),
                      margin: EdgeInsets.only(bottom: 25),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            widget.widgetItem.color.withOpacity(0.2),
                            widget.widgetItem.color.withOpacity(0.05),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: widget.widgetItem.color.withOpacity(0.3),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            widget.widgetItem.icon,
                            size: 50,
                            color: Colors.white,
                          ),
                          SizedBox(height: 16),
                          Text(
                            widget.widgetItem.name,
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            widget.widgetItem.description,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white70,
                              height: 1.5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),

                    // Example Section
                    _buildSection(
                      title: 'Live Example',
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.1),
                          ),
                        ),
                        child: _buildWidgetExample(
                          widget.widgetItem.widgetType,
                        ),
                      ),
                    ),

                    SizedBox(height: 25),

                    // Usage Information
                    _buildSection(
                      title: 'Usage Information',
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: widget.widgetItem.color.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: widget.widgetItem.color.withOpacity(0.2),
                          ),
                        ),
                        child: _buildUsageInfo(widget.widgetItem.widgetType),
                      ),
                    ),

                    SizedBox(height: 25),

                    // Code Snippet
                    _buildSection(
                      title: 'Quick Implementation',
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.1),
                          ),
                        ),
                        child: _buildCodeSnippet(widget.widgetItem.widgetType),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.1,
          ),
        ),
        SizedBox(height: 12),
        child,
      ],
    );
  }

  Widget _buildWidgetExample(ScrollWidgetType type) {
    switch (type) {
      case ScrollWidgetType.singleChildScrollView:
        return SizedBox(
          height: 200,
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                10,
                (index) => Container(
                  height: 50,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );

      case ScrollWidgetType.listView:
        return SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text('Item $index', style: TextStyle(color: Colors.white)),
              subtitle: Text(
                'Subtitle $index',
                style: TextStyle(color: Colors.white70),
              ),
              tileColor: Colors.green.withOpacity(0.1),
            ),
          ),
        );

      case ScrollWidgetType.gridView:
        return SizedBox(
          height: 200,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
            ),
            itemCount: 9,
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  '$index',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        );

      case ScrollWidgetType.pageView:
        return SizedBox(
          height: 200,
          child: PageView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.3),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'Page $index',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        );

      case ScrollWidgetType.customScrollView:
        return SizedBox(
          height: 200,
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                    height: 50,
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Custom Item $index',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  childCount: 10,
                ),
              ),
            ],
          ),
        );

      case ScrollWidgetType.scrollbar:
        return SizedBox(
          height: 200,
          child: Scrollbar(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  'Scroll Item $index',
                  style: TextStyle(color: Colors.white),
                ),
                tileColor: Colors.teal.withOpacity(0.1),
              ),
            ),
          ),
        );

      case ScrollWidgetType.refreshIndicator:
        return SizedBox(
          height: 200,
          child: RefreshIndicator(
            onRefresh: () async {
              await Future.delayed(Duration(seconds: 1));
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Refreshed!')));
            },
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  'Refresh Item $index',
                  style: TextStyle(color: Colors.white),
                ),
                tileColor: Colors.amber.withOpacity(0.1),
              ),
            ),
          ),
        );

      case ScrollWidgetType.nestedScrollView:
        return Column(
          children: [
            Container(
              height: 100,
              color: Colors.indigo.withOpacity(0.3),
              child: Center(
                child: Text(
                  'Outer Scroll Header',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    expandedHeight: 100,
                    floating: true,
                    backgroundColor: Colors.indigo,
                    title: Text(
                      'Nested Header',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
                body: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      'Nested Item $index',
                      style: TextStyle(color: Colors.white),
                    ),
                    tileColor: Colors.indigo.withOpacity(0.1),
                  ),
                ),
              ),
            ),
          ],
        );

      default:
        return Text(
          'Example not available',
          style: TextStyle(fontSize: 16, color: Colors.white),
        );
    }
  }

  Widget _buildUsageInfo(ScrollWidgetType type) {
    String info = '';

    switch (type) {
      case ScrollWidgetType.singleChildScrollView:
        info =
            '• Scroll single child (Column/Row) when content overflows\n• Supports vertical/horizontal scrolling\n• Use physics for custom scroll behavior\n• Ideal for forms or long text blocks';
        break;
      case ScrollWidgetType.listView:
        info =
            '• Efficient scrolling for dynamic lists\n• Use builder for lazy loading\n• Supports separators and custom delegates\n• Most common for vertical lists';
        break;
      case ScrollWidgetType.gridView:
        info =
            '• Grid layout with scrolling\n• Configurable crossAxisCount and spacing\n• Use builder for large datasets\n• Perfect for image galleries or tiles';
        break;
      case ScrollWidgetType.pageView:
        info =
            '• Full-page scrolling with paging\n• Supports controller for programmatic control\n• Use for onboarding or image sliders\n• Horizontal by default';
        break;
      case ScrollWidgetType.customScrollView:
        info =
            '• Advanced scrolling with slivers\n• Combine SliverAppBar, SliverList, etc.\n• Create complex layouts like Pinterest\n• Most flexible scroll widget';
        break;
      case ScrollWidgetType.scrollbar:
        info =
            '• Visual scroll indicator\n• Wrap any ScrollView to add thumb\n• Customizable thickness and radius\n• Improves UX on desktop/web';
        break;
      case ScrollWidgetType.refreshIndicator:
        info =
            '• Pull-to-refresh gesture\n• Wrap ListView/GridView for refresh\n• Async callback for data reload\n• Standard iOS/Android pattern';
        break;
      case ScrollWidgetType.nestedScrollView:
        info =
            '• Coordinate nested scrolling\n• Use for TabBarView with AppBar\n• Handles outer/inner scroll conflicts\n• Essential for complex tabbed UIs';
        break;
    }

    return Text(
      info,
      style: TextStyle(fontSize: 14, color: Colors.white70, height: 1.6),
    );
  }

  Widget _buildCodeSnippet(ScrollWidgetType type) {
    String code = '';

    switch (type) {
      case ScrollWidgetType.singleChildScrollView:
        code = '''SingleChildScrollView(
  child: Column(
    children: [/* Your content */],
  ),
)''';
        break;
      case ScrollWidgetType.listView:
        code = '''ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) => ListTile(
    title: Text(items[index]),
  ),
)''';
        break;
      case ScrollWidgetType.gridView:
        code = '''GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
  ),
  itemCount: items.length,
  itemBuilder: (context, index) => Container(
    child: Text(items[index]),
  ),
)''';
        break;
      case ScrollWidgetType.pageView:
        code = '''PageView.builder(
  itemCount: pages.length,
  itemBuilder: (context, index) => pages[index],
)''';
        break;
      case ScrollWidgetType.customScrollView:
        code = '''CustomScrollView(
  slivers: [
    SliverAppBar(title: Text('Title')),
    SliverList(delegate: SliverChildBuilderDelegate(...)),
  ],
)''';
        break;
      case ScrollWidgetType.scrollbar:
        code = '''Scrollbar(
  child: ListView(/* your list */),
)''';
        break;
      case ScrollWidgetType.refreshIndicator:
        code = '''RefreshIndicator(
  onRefresh: () async { /* refresh logic */ },
  child: ListView(/* your list */),
)''';
        break;
      case ScrollWidgetType.nestedScrollView:
        code = '''NestedScrollView(
  headerSliverBuilder: (context, inner) => [SliverAppBar(...)],
  body: ListView(/* inner content */),
)''';
        break;
    }

    return SelectableText(
      code,
      style: TextStyle(
        fontFamily: 'Monospace',
        fontSize: 12,
        color: Colors.green,
        backgroundColor: Colors.black.withOpacity(0.5),
      ),
    );
  }
}
