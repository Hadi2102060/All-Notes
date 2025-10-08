import 'package:flutter/material.dart';

class TextWidgetScreen extends StatelessWidget {
  // List of all major text-related widgets in Flutter
  final List<TextWidgetItem> textWidgets = [
    TextWidgetItem(
      name: 'Text',
      description: 'Displays a single line of text with a single style',
      widgetType: TextWidgetType.text,
      icon: Icons.text_fields,
      color: Colors.blue,
    ),
    TextWidgetItem(
      name: 'RichText',
      description: 'Displays text with multiple styles and gestures',
      widgetType: TextWidgetType.richText,
      icon: Icons.format_bold,
      color: Colors.purple,
    ),
    TextWidgetItem(
      name: 'SelectableText',
      description: 'Text that can be selected and copied',
      widgetType: TextWidgetType.selectableText,
      icon: Icons.content_copy,
      color: Colors.green,
    ),
    TextWidgetItem(
      name: 'TextField',
      description: 'Editable text input field',
      widgetType: TextWidgetType.textField,
      icon: Icons.input,
      color: Colors.orange,
    ),
    TextWidgetItem(
      name: 'TextFormField',
      description: 'TextField with validation and form integration',
      widgetType: TextWidgetType.textFormField,
      icon: Icons.assignment,
      color: Colors.red,
    ),
    TextWidgetItem(
      name: 'DefaultTextStyle',
      description: 'Defines default text style for descendant widgets',
      widgetType: TextWidgetType.defaultTextStyle,
      icon: Icons.style,
      color: Colors.teal,
    ),
    TextWidgetItem(
      name: 'AnimatedDefaultTextStyle',
      description: 'Animated version of DefaultTextStyle',
      widgetType: TextWidgetType.animatedDefaultTextStyle,
      icon: Icons.animation,
      color: Colors.pink,
    ),
    TextWidgetItem(
      name: 'EditableText',
      description: 'Low-level text editing widget',
      widgetType: TextWidgetType.editableText,
      icon: Icons.edit,
      color: Colors.brown,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text(
          'Flutter Text Widgets',
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
                      Icon(Icons.text_format, size: 60, color: Colors.white70),
                      SizedBox(height: 16),
                      Text(
                        'Explore Text Widgets',
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
                        'Discover all the powerful text widgets available in Flutter framework with interactive examples',
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

                // Grid of Text Widgets
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.9,
                  ),
                  itemCount: textWidgets.length,
                  itemBuilder: (context, index) {
                    return _buildWidgetCard(textWidgets[index], context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWidgetCard(TextWidgetItem widgetItem, BuildContext context) {
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
    TextWidgetItem widgetItem,
  ) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            TextWidgetDetailScreen(widgetItem: widgetItem),
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

// Model class for text widget items
class TextWidgetItem {
  final String name;
  final String description;
  final TextWidgetType widgetType;
  final IconData icon;
  final Color color;

  TextWidgetItem({
    required this.name,
    required this.description,
    required this.widgetType,
    required this.icon,
    required this.color,
  });
}

// Enum for different types of text widgets
enum TextWidgetType {
  text,
  richText,
  selectableText,
  textField,
  textFormField,
  defaultTextStyle,
  animatedDefaultTextStyle,
  editableText,
}

// Detail screen for each text widget
class TextWidgetDetailScreen extends StatefulWidget {
  final TextWidgetItem widgetItem;

  const TextWidgetDetailScreen({Key? key, required this.widgetItem})
    : super(key: key);

  @override
  State<TextWidgetDetailScreen> createState() => _TextWidgetDetailScreenState();
}

class _TextWidgetDetailScreenState extends State<TextWidgetDetailScreen>
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

  Widget _buildWidgetExample(TextWidgetType type) {
    switch (type) {
      case TextWidgetType.text:
        return Column(
          children: [
            Text(
              'This is a beautiful Text widget',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'With customizable styling options',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        );

      case TextWidgetType.richText:
        return RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'RichText ',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 10,
                      color: Colors.amber.withOpacity(0.5),
                    ),
                  ],
                ),
              ),
              TextSpan(
                text: 'allows you to use ',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              TextSpan(
                text: 'multiple',
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' text ',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              TextSpan(
                text: 'styles',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: ' in one widget! ✨',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        );

      case TextWidgetType.selectableText:
        return Column(
          children: [
            SelectableText(
              'This text is selectable! 🔥\n\nTry long-pressing to select and copy this content. You can highlight portions of this text and use the context menu.',
              style: TextStyle(fontSize: 16, color: Colors.white, height: 1.5),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.green.withOpacity(0.3)),
              ),
              child: Text(
                '💡 Tip: Long press to select',
                style: TextStyle(fontSize: 12, color: Colors.green),
              ),
            ),
          ],
        );

      case TextWidgetType.textField:
        return Column(
          children: [
            SizedBox(
              height: 60,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type something amazing...',
                  hintStyle: TextStyle(color: Colors.white54),
                  labelText: 'Your Message',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.message, color: Colors.white70),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.white30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.white30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.05),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Real-time text input with beautiful decoration',
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        );

      case TextWidgetType.textFormField:
        return Column(
          children: [
            SizedBox(
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'your@email.com',
                  hintStyle: TextStyle(color: Colors.white54),
                  prefixIcon: Icon(Icons.email, color: Colors.white70),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.white30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.05),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                ),
                style: TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.red.withOpacity(0.3)),
              ),
              child: Text(
                '🔒 Includes built-in validation',
                style: TextStyle(fontSize: 12, color: Colors.red),
              ),
            ),
          ],
        );

      case TextWidgetType.defaultTextStyle:
        return DefaultTextStyle(
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto',
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('All this text inherits the same style'),
              SizedBox(height: 8),
              Text('No need to repeat style properties'),
              SizedBox(height: 8),
              Text('Consistent design across multiple widgets'),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.teal.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.teal.withOpacity(0.3)),
                ),
                child: Text('Even this container text!'),
              ),
            ],
          ),
        );

      case TextWidgetType.animatedDefaultTextStyle:
        return Column(
          children: [
            AnimatedDefaultTextStyle(
              style: TextStyle(
                fontSize: 20,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(blurRadius: 10, color: Colors.pink.withOpacity(0.5)),
                ],
              ),
              duration: Duration(seconds: 2),
              child: Text('Watch me animate! ✨'),
            ),
            SizedBox(height: 20),
            AnimatedDefaultTextStyle(
              style: TextStyle(
                fontSize: 16,
                color: Colors.cyan,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
              ),
              duration: Duration(milliseconds: 1500),
              child: Text('Smooth style transitions'),
            ),
          ],
        );

      case TextWidgetType.editableText:
        return Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.brown.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.brown),
              ),
              child: Column(
                children: [
                  Icon(Icons.code, color: Colors.brown, size: 30),
                  SizedBox(height: 8),
                  Text(
                    'Low-level EditableText Widget',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Used internally by TextField\nNot typically used directly',
                    style: TextStyle(fontSize: 12, color: Colors.white70),
                    textAlign: TextAlign.center,
                  ),
                ],
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

  Widget _buildUsageInfo(TextWidgetType type) {
    String info = '';

    switch (type) {
      case TextWidgetType.text:
        info =
            '• Use for displaying simple, non-interactive text\n• Perfect for labels, titles, and descriptions\n• Supports basic styling, alignment, and overflow handling\n• Most commonly used text widget in Flutter';
        break;
      case TextWidgetType.richText:
        info =
            '• Ideal for text with multiple styles in one paragraph\n• Perfect for formatted content, links, and highlighted text\n• Use TextSpan for different style segments\n• More flexible than multiple Text widgets';
        break;
      case TextWidgetType.selectableText:
        info =
            '• Essential for content that users might want to copy\n• Perfect for code snippets, addresses, or important information\n• Provides text selection toolbar automatically\n• Better user experience for copy-paste functionality';
        break;
      case TextWidgetType.textField:
        info =
            '• Primary widget for single-line text input\n• Great for forms, search bars, and user input\n• Highly customizable decoration and styling\n• Supports controllers, focus nodes, and input formatting';
        break;
      case TextWidgetType.textFormField:
        info =
            '• Perfect for form validation scenarios\n• Integrates seamlessly with Form widget\n• Automatic validation and error handling\n• Ideal for login forms, registration, and data entry';
        break;
      case TextWidgetType.defaultTextStyle:
        info =
            '• Sets consistent text styling for child widgets\n• Reduces code repetition for similar text styles\n• Perfect for theming and design systems\n• Children inherit the style automatically';
        break;
      case TextWidgetType.animatedDefaultTextStyle:
        info =
            '• Creates smooth transitions between text styles\n• Perfect for interactive UI state changes\n• Great for hover effects, theme switching\n• Maintains readability during animations';
        break;
      case TextWidgetType.editableText:
        info =
            '• Low-level text editing primitive\n• Used internally by TextField and CupertinoTextField\n• Rarely used directly in app development\n• Provides maximum control over text editing';
        break;
    }

    return Text(
      info,
      style: TextStyle(fontSize: 14, color: Colors.white70, height: 1.6),
    );
  }

  Widget _buildCodeSnippet(TextWidgetType type) {
    String code = '';

    switch (type) {
      case TextWidgetType.text:
        code = '''Text(
  'Hello Flutter!',
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  ),
)''';
        break;
      case TextWidgetType.richText:
        code = '''RichText(
  text: TextSpan(
    children: [
      TextSpan(text: 'Hello', style: style1),
      TextSpan(text: 'Flutter', style: style2),
    ],
  ),
)''';
        break;
      case TextWidgetType.selectableText:
        code = '''SelectableText(
  'This text can be copied',
  style: TextStyle(fontSize: 16),
)''';
        break;
      case TextWidgetType.textField:
        code = '''TextField(
  decoration: InputDecoration(
    labelText: 'Username',
    hintText: 'Enter username',
  ),
  controller: myController,
)''';
        break;
      case TextWidgetType.textFormField:
        code = '''TextFormField(
  validator: (value) {
    if (value.isEmpty) return 'Required';
    return null;
  },
  decoration: InputDecoration(
    labelText: 'Email',
  ),
)''';
        break;
      case TextWidgetType.defaultTextStyle:
        code = '''DefaultTextStyle(
  style: TextStyle(fontSize: 18, color: Colors.black),
  child: Column(
    children: [
      Text('Inherits style'),
      Text('Me too!'),
    ],
  ),
)''';
        break;
      case TextWidgetType.animatedDefaultTextStyle:
        code = '''AnimatedDefaultTextStyle(
  duration: Duration(seconds: 1),
  style: isSelected ? style1 : style2,
  child: Text('Animated Text'),
)''';
        break;
      case TextWidgetType.editableText:
        code = '''// Advanced usage only
EditableText(
  controller: controller,
  focusNode: focusNode,
  style: TextStyle(),
  cursorColor: Colors.blue,
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
