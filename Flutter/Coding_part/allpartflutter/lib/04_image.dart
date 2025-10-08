import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  // List of all major image-related widgets in Flutter
  final List<ImageWidgetItem> imageWidgets = [
    ImageWidgetItem(
      name: 'Image.network',
      description: 'Load image from a network URL',
      widgetType: ImageWidgetType.network,
      icon: Icons.cloud_download,
      color: Colors.blue,
    ),
    ImageWidgetItem(
      name: 'Image.asset',
      description: 'Load local image from assets',
      widgetType: ImageWidgetType.asset,
      icon: Icons.folder,
      color: Colors.green,
    ),
    ImageWidgetItem(
      name: 'Image.file',
      description: 'Load image from device file system',
      widgetType: ImageWidgetType.file,
      icon: Icons.insert_drive_file,
      color: Colors.orange,
    ),
    ImageWidgetItem(
      name: 'Image.memory',
      description: 'Load image from byte data (Uint8List)',
      widgetType: ImageWidgetType.memory,
      icon: Icons.memory,
      color: Colors.purple,
    ),
    ImageWidgetItem(
      name: 'ImageIcon',
      description: 'Display image as an icon with color/tint support',
      widgetType: ImageWidgetType.imageIcon,
      icon: Icons.image,
      color: Colors.red,
    ),
    ImageWidgetItem(
      name: 'ImageFiltered',
      description: 'Apply image filters and visual effects',
      widgetType: ImageWidgetType.imageFiltered,
      icon: Icons.filter,
      color: Colors.teal,
    ),
    ImageWidgetItem(
      name: 'RawImage',
      description: 'Low-level raw image rendering from ui.Image',
      widgetType: ImageWidgetType.rawImage,
      icon: Icons.code,
      color: Colors.indigo,
    ),
    ImageWidgetItem(
      name: 'FadeInImage',
      description: 'Fade-in animation for loading images with placeholder',
      widgetType: ImageWidgetType.fadeInImage,
      icon: Icons.animation,
      color: Colors.amber,
    ),
    ImageWidgetItem(
      name: 'CircleAvatar',
      description: 'Circular image display for avatars/profiles',
      widgetType: ImageWidgetType.circleAvatar,
      icon: Icons.person,
      color: Colors.pink,
    ),
    ImageWidgetItem(
      name: 'FittedBox',
      description: 'Scale and fit image to parent constraints',
      widgetType: ImageWidgetType.fittedBox,
      icon: Icons.fit_screen,
      color: Colors.cyan,
    ),
    ImageWidgetItem(
      name: 'RotatedBox',
      description: 'Rotate image during layout phase',
      widgetType: ImageWidgetType.rotatedBox,
      icon: Icons.rotate_right,
      color: Colors.brown,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text(
          'Flutter Image Widgets',
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
                      Icon(Icons.image, size: 60, color: Colors.white70),
                      SizedBox(height: 16),
                      Text(
                        'Explore Image Widgets',
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
                        'Discover all the powerful image widgets available in Flutter framework with interactive examples',
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

                // Grid of Image Widgets
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.9,
                  ),
                  itemCount: imageWidgets.length,
                  itemBuilder: (context, index) {
                    return _buildWidgetCard(imageWidgets[index], context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWidgetCard(ImageWidgetItem widgetItem, BuildContext context) {
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
    ImageWidgetItem widgetItem,
  ) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ImageWidgetDetailScreen(widgetItem: widgetItem),
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

// Model class for image widget items
class ImageWidgetItem {
  final String name;
  final String description;
  final ImageWidgetType widgetType;
  final IconData icon;
  final Color color;

  ImageWidgetItem({
    required this.name,
    required this.description,
    required this.widgetType,
    required this.icon,
    required this.color,
  });
}

// Enum for different types of image widgets
enum ImageWidgetType {
  network,
  asset,
  file,
  memory,
  imageIcon,
  imageFiltered,
  rawImage,
  fadeInImage,
  circleAvatar,
  fittedBox,
  rotatedBox,
}

// Detail screen for each image widget
class ImageWidgetDetailScreen extends StatefulWidget {
  final ImageWidgetItem widgetItem;

  const ImageWidgetDetailScreen({Key? key, required this.widgetItem})
    : super(key: key);

  @override
  State<ImageWidgetDetailScreen> createState() =>
      _ImageWidgetDetailScreenState();
}

class _ImageWidgetDetailScreenState extends State<ImageWidgetDetailScreen>
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

  Widget _buildWidgetExample(ImageWidgetType type) {
    switch (type) {
      case ImageWidgetType.network:
        return Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey[800],
                  child: Icon(Icons.error, color: Colors.white, size: 50),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Network image loaded from URL',
              style: TextStyle(color: Colors.white70, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        );

      case ImageWidgetType.asset:
        return Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/placeholder.png', // Assume placeholder asset exists
                width: 150,
                height: 150,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey[800],
                  child: Icon(
                    Icons.image_not_supported,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Local asset image',
              style: TextStyle(color: Colors.white70, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        );

      case ImageWidgetType.file:
        return Column(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.file_present, color: Colors.white, size: 50),
            ),
            SizedBox(height: 10),
            Text(
              'File system image (requires path)',
              style: TextStyle(color: Colors.white70, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        );

      case ImageWidgetType.memory:
        return Column(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.purple[800],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.memory, color: Colors.white, size: 50),
            ),
            SizedBox(height: 10),
            Text(
              'Byte data image (Uint8List)',
              style: TextStyle(color: Colors.white70, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        );

      case ImageWidgetType.imageIcon:
        return Column(
          children: [
            ImageIcon(
              AssetImage('assets/images/placeholder.png'), // Assume asset
              color: Colors.red,
              size: 80,
            ),
            SizedBox(height: 10),
            Text(
              'Tinted image as icon',
              style: TextStyle(color: Colors.white70, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        );

      case ImageWidgetType.imageFiltered:
        return Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: ImageFiltered(
                imageFilter: ui.ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Blur filter applied',
              style: TextStyle(color: Colors.white70, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        );

      case ImageWidgetType.rawImage:
        return Column(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.indigo[800],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.code, color: Colors.white, size: 50),
            ),
            SizedBox(height: 10),
            Text(
              'Low-level raw rendering',
              style: TextStyle(color: Colors.white70, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        );

      case ImageWidgetType.fadeInImage:
        return Column(
          children: [
            FadeInImage(
              placeholder: AssetImage(
                'assets/images/placeholder.png',
              ), // Assume asset
              image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              ),
              width: 150,
              height: 150,
              fit: BoxFit.cover,
              imageErrorBuilder: (context, error, stackTrace) => Container(
                width: 150,
                height: 150,
                color: Colors.grey[800],
                child: Icon(Icons.error, color: Colors.white, size: 50),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Fade-in with placeholder',
              style: TextStyle(color: Colors.white70, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        );

      case ImageWidgetType.circleAvatar:
        return Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              ),
              backgroundColor: Colors.grey[800],
              child: const Icon(Icons.person, size: 50, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Circular avatar image',
              style: TextStyle(color: Colors.white70, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        );

      case ImageWidgetType.fittedBox:
        return Column(
          children: [
            FittedBox(
              fit: BoxFit.contain,
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Scaled to fit constraints',
              style: TextStyle(color: Colors.white70, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        );

      case ImageWidgetType.rotatedBox:
        return Column(
          children: [
            RotatedBox(
              quarterTurns: 1,
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Rotated image (90°)',
              style: TextStyle(color: Colors.white70, fontSize: 12),
              textAlign: TextAlign.center,
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

  Widget _buildUsageInfo(ImageWidgetType type) {
    String info = '';

    switch (type) {
      case ImageWidgetType.network:
        info =
            '• Load images from internet URLs\n• Supports caching and error handling\n• Use loadingBuilder for progress indicators\n• Ideal for dynamic content from APIs';
        break;
      case ImageWidgetType.asset:
        info =
            '• Bundle images with your app\n• Fast loading from local assets\n• Declare in pubspec.yaml\n• Perfect for static UI elements';
        break;
      case ImageWidgetType.file:
        info =
            '• Access device storage images\n• Requires file path (File object)\n• Use with image_picker plugin\n• Great for gallery/user-uploaded photos';
        break;
      case ImageWidgetType.memory:
        info =
            '• Load from byte arrays (Uint8List)\n• Useful for in-memory data\n• Generated or decoded images\n• Advanced use cases like encryption';
        break;
      case ImageWidgetType.imageIcon:
        info =
            '• Treat images as scalable icons\n• Supports color tinting\n• Semantic labeling for accessibility\n• Compact image display in buttons/lists';
        break;
      case ImageWidgetType.imageFiltered:
        info =
            '• Apply visual effects/filters\n• Blur, color matrix, compositing\n• Performance optimized for images\n• Creative UI enhancements';
        break;
      case ImageWidgetType.rawImage:
        info =
            '• Low-level dart:ui.Image rendering\n• Custom painting and shaders\n• Advanced graphics scenarios\n• Rarely used in standard apps';
        break;
      case ImageWidgetType.fadeInImage:
        info =
            '• Smooth loading transitions\n• Placeholder while loading\n• Error handling built-in\n• Better UX for network images';
        break;
      case ImageWidgetType.circleAvatar:
        info =
            '• Profile pictures and avatars\n• Circular clipping with fallback\n• Supports background images/text\n• Common in social/user interfaces';
        break;
      case ImageWidgetType.fittedBox:
        info =
            '• Automatic scaling to fit\n• Multiple BoxFit options\n• Responsive image sizing\n• Prevents overflow in layouts';
        break;
      case ImageWidgetType.rotatedBox:
        info =
            '• Simple rotation without repaint\n• Quarter-turn increments only\n• Layout-time transformation\n• Efficient for 90/180/270° rotations';
        break;
    }

    return Text(
      info,
      style: TextStyle(fontSize: 14, color: Colors.white70, height: 1.6),
    );
  }

  Widget _buildCodeSnippet(ImageWidgetType type) {
    String code = '';

    switch (type) {
      case ImageWidgetType.network:
        code = '''Image.network(
  'https://example.com/image.jpg',
  width: 100,
  height: 100,
  fit: BoxFit.cover,
  errorBuilder: (context, error, stack) => 
    Icon(Icons.error),
)''';
        break;
      case ImageWidgetType.asset:
        code = '''Image.asset(
  'assets/images/photo.png',
  width: 100,
  height: 100,
  fit: BoxFit.cover,
)''';
        break;
      case ImageWidgetType.file:
        code = '''Image.file(
  File('path/to/image.jpg'),
  width: 100,
  height: 100,
  fit: BoxFit.cover,
)''';
        break;
      case ImageWidgetType.memory:
        code = '''Image.memory(
  uint8listBytes,
  width: 100,
  height: 100,
  fit: BoxFit.cover,
)''';
        break;
      case ImageWidgetType.imageIcon:
        code = '''ImageIcon(
  AssetImage('assets/icon.png'),
  color: Colors.blue,
  size: 48,
)''';
        break;
      case ImageWidgetType.imageFiltered:
        code = '''ImageFiltered(
  imageFilter: ImageFilter.blur(sigmaX: 5),
  child: Image.network(url),
)''';
        break;
      case ImageWidgetType.rawImage:
        code = '''RawImage(
  image: uiImage,
  width: 100,
  height: 100,
)''';
        break;
      case ImageWidgetType.fadeInImage:
        code = '''FadeInImage(
  placeholder: AssetImage('loading.gif'),
  image: NetworkImage(url),
  width: 100,
  height: 100,
)''';
        break;
      case ImageWidgetType.circleAvatar:
        code = '''CircleAvatar(
  backgroundImage: NetworkImage(url),
  radius: 50,
)''';
        break;
      case ImageWidgetType.fittedBox:
        code = '''FittedBox(
  fit: BoxFit.contain,
  child: Image.network(url),
)''';
        break;
      case ImageWidgetType.rotatedBox:
        code = '''RotatedBox(
  quarterTurns: 1,
  child: Image.network(url),
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
