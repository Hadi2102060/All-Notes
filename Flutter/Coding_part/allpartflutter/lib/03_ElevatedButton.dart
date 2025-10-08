import 'package:flutter/material.dart';

class ElevatedButtonScreen extends StatelessWidget {
  // List of all major button-related widgets in Flutter (Material Design focused)
  final List<ButtonWidgetItem> buttonWidgets = [
    ButtonWidgetItem(
      name: 'ElevatedButton',
      description: 'Raised button with elevation and shadow effects',
      widgetType: ButtonWidgetType.elevatedButton,
      icon: Icons.elevator,
      color: Colors.blue,
    ),
    ButtonWidgetItem(
      name: 'FilledButton',
      description: 'Modern filled button with tonal variant support',
      widgetType: ButtonWidgetType.filledButton,
      icon: Icons.filter,
      color: Colors.indigo,
    ),
    ButtonWidgetItem(
      name: 'OutlinedButton',
      description: 'Button with a border outline and no fill',
      widgetType: ButtonWidgetType.outlinedButton,
      icon: Icons.border_all,
      color: Colors.green,
    ),
    ButtonWidgetItem(
      name: 'TextButton',
      description: 'Flat button with text only, no background',
      widgetType: ButtonWidgetType.textButton,
      icon: Icons.text_fields,
      color: Colors.orange,
    ),
    ButtonWidgetItem(
      name: 'IconButton',
      description: 'Button that shows an icon, compact size',
      widgetType: ButtonWidgetType.iconButton,
      icon: Icons.touch_app,
      color: Colors.purple,
    ),
    ButtonWidgetItem(
      name: 'FloatingActionButton',
      description: 'Circular floating button for primary action',
      widgetType: ButtonWidgetType.floatingActionButton,
      icon: Icons.add,
      color: Colors.red,
    ),
    ButtonWidgetItem(
      name: 'DropdownButton',
      description: 'Button that shows a menu with selectable options',
      widgetType: ButtonWidgetType.dropdownButton,
      icon: Icons.arrow_drop_down,
      color: Colors.teal,
    ),
    ButtonWidgetItem(
      name: 'PopupMenuButton',
      description: 'Button that shows a popup menu with actions',
      widgetType: ButtonWidgetType.popupMenuButton,
      icon: Icons.more_vert,
      color: Colors.amber,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text(
          'Flutter Button Widgets',
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
                      Icon(Icons.touch_app, size: 60, color: Colors.white70),
                      SizedBox(height: 16),
                      Text(
                        'Explore Button Widgets',
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
                        'Discover all the powerful button widgets available in Flutter framework with interactive examples',
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

                // Grid of Button Widgets
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.9,
                  ),
                  itemCount: buttonWidgets.length,
                  itemBuilder: (context, index) {
                    return _buildWidgetCard(buttonWidgets[index], context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWidgetCard(ButtonWidgetItem widgetItem, BuildContext context) {
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
    ButtonWidgetItem widgetItem,
  ) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ButtonWidgetDetailScreen(widgetItem: widgetItem),
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

// Model class for button widget items
class ButtonWidgetItem {
  final String name;
  final String description;
  final ButtonWidgetType widgetType;
  final IconData icon;
  final Color color;

  ButtonWidgetItem({
    required this.name,
    required this.description,
    required this.widgetType,
    required this.icon,
    required this.color,
  });
}

// Enum for different types of button widgets
enum ButtonWidgetType {
  elevatedButton,
  filledButton,
  outlinedButton,
  textButton,
  iconButton,
  floatingActionButton,
  dropdownButton,
  popupMenuButton,
}

// Detail screen for each button widget
class ButtonWidgetDetailScreen extends StatefulWidget {
  final ButtonWidgetItem widgetItem;

  const ButtonWidgetDetailScreen({Key? key, required this.widgetItem})
    : super(key: key);

  @override
  State<ButtonWidgetDetailScreen> createState() =>
      _ButtonWidgetDetailScreenState();
}

class _ButtonWidgetDetailScreenState extends State<ButtonWidgetDetailScreen>
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

  Widget _buildWidgetExample(ButtonWidgetType type) {
    switch (type) {
      case ButtonWidgetType.elevatedButton:
        return Column(
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('ElevatedButton pressed!')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Text(
                  'Elevated Button',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Tap to see snackbar',
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        );

      case ButtonWidgetType.filledButton:
        return Column(
          children: [
            FilledButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('FilledButton pressed!')),
                );
              },
              style: FilledButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Text(
                  'Filled Button',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Modern filled variant',
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        );

      case ButtonWidgetType.outlinedButton:
        return Column(
          children: [
            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('OutlinedButton pressed!')),
                );
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
                side: BorderSide(color: Colors.green),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Text(
                  'Outlined Button',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Border-only style',
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        );

      case ButtonWidgetType.textButton:
        return Column(
          children: [
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('TextButton pressed!')),
                );
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Text(
                  'Text Button',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Flat text style',
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        );

      case ButtonWidgetType.iconButton:
        return Column(
          children: [
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('IconButton pressed!')),
                );
              },
              icon: const Icon(Icons.star, color: Colors.purple, size: 40),
              tooltip: 'Icon Button',
              style: IconButton.styleFrom(
                backgroundColor: Colors.purple.withOpacity(0.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Compact icon action',
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        );

      case ButtonWidgetType.floatingActionButton:
        return Column(
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: FloatingActionButton(
                onPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(const SnackBar(content: Text('FAB pressed!')));
                },
                backgroundColor: Colors.red,
                child: const Icon(Icons.add, color: Colors.white),
                tooltip: 'Floating Action',
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Primary floating action',
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        );

      case ButtonWidgetType.dropdownButton:
        return Column(
          children: [
            DropdownButton<String>(
              value: 'Option 1',
              icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
              style: const TextStyle(color: Colors.white),
              dropdownColor: Colors.grey[800],
              items: <String>['Option 1', 'Option 2', 'Option 3'].map((
                String value,
              ) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Selected: $newValue')));
              },
            ),
            const SizedBox(height: 10),
            Text(
              'Selectable menu options',
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        );

      case ButtonWidgetType.popupMenuButton:
        return Column(
          children: [
            PopupMenuButton<String>(
              color: Colors.grey[800],
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onSelected: (String result) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Selected: $result')));
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Action 1',
                  child: Text('Action 1'),
                ),
                const PopupMenuItem<String>(
                  value: 'Action 2',
                  child: Text('Action 2'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Overflow menu actions',
              style: TextStyle(color: Colors.white70, fontSize: 12),
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

  Widget _buildUsageInfo(ButtonWidgetType type) {
    String info = '';

    switch (type) {
      case ButtonWidgetType.elevatedButton:
        info =
            '• Use for prominent actions with visual elevation\n• Ideal for primary actions in forms and cards\n• Supports Material 3 elevation and color schemes\n• Customizable with styleFrom() for advanced styling';
        break;
      case ButtonWidgetType.filledButton:
        info =
            '• Modern replacement for ElevatedButton in Material 3\n• Supports tonal and standard fill variants\n• Great for secondary actions with subtle fill\n• Follows current design system guidelines';
        break;
      case ButtonWidgetType.outlinedButton:
        info =
            '• Perfect for secondary or destructive actions\n• Minimal design with border focus\n• Good for grouped buttons or navigation\n• Low visual emphasis for less important tasks';
        break;
      case ButtonWidgetType.textButton:
        info =
            '• Use for inline or subtle actions\n• Ideal for dialogs, cards, or toolbars\n• No background or elevation for clean look\n• Perfect for text-only interactions';
        break;
      case ButtonWidgetType.iconButton:
        info =
            '• Compact buttons for icon-only actions\n• Great for toolbars, app bars, and compact UI\n• Supports tooltips and splash effects\n• Use for quick, non-text interactions';
        break;
      case ButtonWidgetType.floatingActionButton:
        info =
            '• Primary action button floating over content\n• Circular design for main app functionality\n• Supports extended variant with text\n• Typically placed in Scaffold\'s floatingActionButton';
        break;
      case ButtonWidgetType.dropdownButton:
        info =
            '• For selecting from predefined options\n• Compact form field replacement\n• Supports validation and form integration\n• Use with DropdownMenuItem for list items';
        break;
      case ButtonWidgetType.popupMenuButton:
        info =
            '• Overflow menu for multiple related actions\n• Great for toolbar or contextual menus\n• Supports icons and nested submenus\n• Use for actions that don\'t fit inline';
        break;
    }

    return Text(
      info,
      style: TextStyle(fontSize: 14, color: Colors.white70, height: 1.6),
    );
  }

  Widget _buildCodeSnippet(ButtonWidgetType type) {
    String code = '';

    switch (type) {
      case ButtonWidgetType.elevatedButton:
        code = '''ElevatedButton(
  onPressed: () {},
  child: Text('Button'),
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
  ),
)''';
        break;
      case ButtonWidgetType.filledButton:
        code = '''FilledButton(
  onPressed: () {},
  child: Text('Filled'),
  style: FilledButton.styleFrom(
    backgroundColor: Colors.indigo,
  ),
)''';
        break;
      case ButtonWidgetType.outlinedButton:
        code = '''OutlinedButton(
  onPressed: () {},
  child: Text('Outlined'),
  style: OutlinedButton.styleFrom(
    side: BorderSide(color: Colors.green),
  ),
)''';
        break;
      case ButtonWidgetType.textButton:
        code = '''TextButton(
  onPressed: () {},
  child: Text('Text'),
  style: TextButton.styleFrom(
    foregroundColor: Colors.orange,
  ),
)''';
        break;
      case ButtonWidgetType.iconButton:
        code = '''IconButton(
  onPressed: () {},
  icon: Icon(Icons.star),
  tooltip: 'Star',
)''';
        break;
      case ButtonWidgetType.floatingActionButton:
        code = '''FloatingActionButton(
  onPressed: () {},
  child: Icon(Icons.add),
)''';
        break;
      case ButtonWidgetType.dropdownButton:
        code = '''DropdownButton<String>(
  value: selectedValue,
  items: items.map((String item) => 
    DropdownMenuItem(value: item, child: Text(item))
  ).toList(),
  onChanged: (value) {},
)''';
        break;
      case ButtonWidgetType.popupMenuButton:
        code = '''PopupMenuButton(
  onSelected: (value) {},
  itemBuilder: (context) => [
    PopupMenuItem(value: '1', child: Text('Option 1')),
  ],
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
