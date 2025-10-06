
# Flutter er Widget/Function রিয়েল-টাইম কমিউনিকেশন করে?

- ১. Core Flutter Widgets:
    - StreamBuilder (সবচেয়ে গুরুত্বপূর্ণ)
        - কাজ: Firestore stream থেকে ডেটা নিয়ে UI automatically update করে
    - ListView.builder:
        - কাজ: মেসেজ লিস্ট efficiently show করে

- ২. Firebase/Firestore Functions:
   
   - snapshots():
      
      ```
      // রিয়েল-টাইম ম্যাজিক শুরু এখান থেকে!
       _firestore.collection('conversations')
       .doc(_conversationId)
       .collection('messages')
        .orderBy('timestamp')
        .snapshots() // ← এই function টা সবচেয়ে important
        .listen((snapshot) {
        // নতুন মেসেজ আসলে এখানে আসে
        });
      ```

    - add():

        ```
         // নতুন মেসেজ সেন্ড করা
         await _firestore.collection('messages').add({
          'text': messageText,
          'senderId': _currentUserId,
          'timestamp': FieldValue.serverTimestamp(), // ← অটো টাইমস্ট্যাম্প
          'isRead': false,
          });
      ```

    - update():

      ```
      // মেসেজ রিড মার্ক করা
       await _firestore.collection('messages').doc(messageId).update({
      'isRead': true,
      'readTime': FieldValue.serverTimestamp(),
       });
      ```

- ৩. State Management:
  
  - setState():
  - AnimationController:


- ৪. UI/UX Widgets:

  - CircleAvatar:  কাজ: ইউজার প্রোফাইল পিকচার + অনলাইন স্ট্যাটাস
  -  ListTile:  কাজ: কনভারসেশন লিস্ট আইটেম
  -  TextField + Controller:  কাজ: মেসেজ ইনপুট ফিল্ড


- ৫. Navigation & Routing:

  - Navigator.push():  কাজ: একটি স্ক্রিন থেকে অন্য স্ক্রিনে navigate করা



- ৬. Performance & Optimization:

  - ScrollController:

  - dispose() method:  কাজ: Resource cleanup


- ৭. Complete Flow Example:

   ```
    // 1. Stream সেটআপ
     StreamSubscription? _messageStream;

    // 2. লিসেনার শুরু
    void _startListening() {
    _messageStream = _firestore
      .collection('messages')
      .snapshots()
      .listen((snapshot) {
        
    // 3. নতুন ডেটা পেলে
    setState(() {
      _messages = snapshot.docs.map((doc) => doc.data()).toList();
    });
    
    // 4. অটো স্ক্রোল
    _scrollToBottom();
   });
   }

   // 5. মেসেজ সেন্ড
   void _sendMessage() {
  _firestore.collection('messages').add({
    'text': _messageController.text,
    'timestamp': FieldValue.serverTimestamp(),
  });
  
  _messageController.clear();
  }
   ```








# ৮. বাংলায় সহজ টেবিল:

- Widget/Function	কাজ	Importance
- StreamBuilder	অটো UI আপডেট	⭐⭐⭐⭐⭐
- snapshots()	রিয়েল-টাইম ডেটা	⭐⭐⭐⭐⭐
- setState()	UI রিফ্রেশ	⭐⭐⭐⭐
- ListView.builder	Efficient লিস্ট	⭐⭐⭐⭐
- ScrollController	অটো স্ক্রোল	⭐⭐⭐
- dispose()	মেমরি ক্লিন	⭐⭐⭐⭐


# ৯. এক লাইনে সারাংশ:

####  "StreamBuilder + Firestore snapshots() + setState() = পুরো রিয়েল-টাইম সিস্টেম!" 🎯

#### সংক্ষেপে:

- StreamBuilder UI update করে

- snapshots() ডেটা listen করে

- setState() screen refresh করে

- ListView messages show করে

- একসাথে কাজ করেই রিয়েল-টাইম কমিউনিকেশন হয়! ✅
        


...........................Direct Message Screen page .................

# Chat UI : jekhane user gulo dekhabe kon kon user er sathe chat korese


```
import 'package:flutter/material.dart';
import 'package:adda2/views/social/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DirectMessagesScreen extends StatefulWidget {
  const DirectMessagesScreen({super.key});

  @override
  State<DirectMessagesScreen> createState() => _DirectMessagesScreenState();
}

class _DirectMessagesScreenState extends State<DirectMessagesScreen>
    with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late AnimationController _slideController;
  late AnimationController _backgroundController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _backgroundAnimation;

  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  List<Map<String, dynamic>> _conversations = [];
  List<Map<String, dynamic>> _allUsers = [];
  List<Map<String, dynamic>> _friends = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _loadUsersAndConversations();
  }

  void _initializeAnimations() {
    _fadeController = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    );

    _slideController = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );

    _backgroundController = AnimationController(
      duration: Duration(seconds: 7),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _fadeController, curve: Curves.easeInOut),
    );

    _slideAnimation = Tween<Offset>(begin: Offset(0, 0.3), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: _slideController, curve: Curves.easeOutCubic),
        );

    _backgroundAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _backgroundController, curve: Curves.easeInOut),
    );

    _fadeController.forward();
    _slideController.forward();
    _backgroundController.repeat(reverse: true);
  }

  Future<void> _loadUsersAndConversations() async {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) {
        setState(() {
          _isLoading = false;
        });
        return;
      }

      print('Current User ID: ${currentUser.uid}');

      // Get all users from Firestore (excluding current user)
      final usersSnapshot = await _firestore.collection('users').get();
      print('Total users in database: ${usersSnapshot.docs.length}');

      // Convert to list of user maps
      List<Map<String, dynamic>> allUsers = [];

      for (var doc in usersSnapshot.docs) {
        if (doc.id != currentUser.uid) {
          final userData = doc.data();
          print('User Data for ${doc.id}: $userData');

          // Properly handle profile image
          String profileImage = _getProfileImage(userData);
          
          final userMap = {
            'uid': doc.id,
            'username': userData['username'] ?? 'Unknown User',
            'name': userData['name'] ?? '',
            'email': userData['email'] ?? '',
            'userImage': profileImage,
            'isOnline': userData['isOnline'] ?? false,
            'lastSeen': userData['lastSeen']?.toDate() ?? DateTime.now(),
            'phone': userData['phone'] ?? '',
          };

          allUsers.add(userMap);
        }
      }

      // Get current user's friends
      final currentUserDoc = await _firestore
          .collection('users')
          .doc(currentUser.uid)
          .get();
      final currentUserData = currentUserDoc.data();

      List<Map<String, dynamic>> friends = [];
      if (currentUserData != null && currentUserData['friends'] != null) {
        final friendsList = List<String>.from(currentUserData['friends']);
        friends = allUsers
            .where((user) => friendsList.contains(user['uid']))
            .toList();
      }

      // Load existing conversations (temporary fix for index building)
      final conversationsSnapshot = await _firestore
          .collection('conversations')
          .where('participants', arrayContains: currentUser.uid)
          .get();

      List<Map<String, dynamic>> conversations = [];

      for (var doc in conversationsSnapshot.docs) {
        final conversationData = doc.data();
        final participants = List<String>.from(
          conversationData['participants'] ?? [],
        );
        final otherUserId = participants.firstWhere(
          (id) => id != currentUser.uid,
        );

        // Find user data for the other participant
        final otherUser = allUsers.firstWhere(
          (user) => user['uid'] == otherUserId,
          orElse: () => {
            'uid': otherUserId,
            'username': 'Unknown User',
            'userImage': _getDefaultProfileImage(otherUserId),
            'isOnline': false,
          },
        );

        final lastMessageTime = conversationData['lastMessageTime']?.toDate();
        conversations.add({
          'uid': otherUser['uid'],
          'username': otherUser['username'],
          'name': otherUser['name'],
          'userImage': otherUser['userImage'],
          'lastMessage':
              conversationData['lastMessage'] ?? 'Start a conversation',
          'time': _formatTime(lastMessageTime ?? DateTime.now()),
          'unreadCount': conversationData['unreadCount']?[currentUser.uid] ?? 0,
          'isOnline': otherUser['isOnline'] ?? false,
          'isTyping': false,
          'conversationId': doc.id,
          'lastMessageTime': lastMessageTime, // For sorting
        });
      }

      // Sort conversations by last message time (client side)
      conversations.sort((a, b) {
        final timeA = a['lastMessageTime'] ?? DateTime(0);
        final timeB = b['lastMessageTime'] ?? DateTime(0);
        return timeB.compareTo(timeA); // Descending order
      });

      setState(() {
        _allUsers = allUsers;
        _friends = friends;
        _conversations = conversations;
        _isLoading = false;
      });

      print('Data loaded successfully:');
      print('- All users: ${_allUsers.length}');
      print('- Friends: ${_friends.length}');
      print('- Conversations: ${_conversations.length}');
    } catch (e) {
      print('Error loading data: $e');
      setState(() {
        _isLoading = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error loading data: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  String _getProfileImage(Map<String, dynamic> userData) {
    final profileImage = userData['profileImage'];
    
    // Check if profileImage exists and is valid
    if (profileImage == null || profileImage.toString().isEmpty) {
      return _getDefaultProfileImage(userData['username'] ?? 'user');
    }
    
    // Check if it's a base64 image
    if (profileImage.toString().contains('base64')) {
      return profileImage.toString();
    }
    
    // Check if it's a valid URL
    if (profileImage.toString().startsWith('http')) {
      return profileImage.toString();
    }
    
    // Check if it's a data:image URL
    if (profileImage.toString().startsWith('data:image')) {
      return profileImage.toString();
    }
    
    // Default fallback
    return _getDefaultProfileImage(userData['username'] ?? 'user');
  }

  String _getDefaultProfileImage(String identifier) {
    // Use a consistent default image based on user identifier
    return 'https://ui-avatars.com/api/?name=${Uri.encodeComponent(identifier)}&background=random&color=fff&size=200';
  }

  Widget _buildProfileImage(String imageUrl, String username, {double radius = 28}) {
    try {
      // Check if it's a base64 image
      if (imageUrl.contains('base64')) {
        return CircleAvatar(
          radius: radius,
          backgroundImage: MemoryImage(
            _base64ToImage(imageUrl),
          ),
          child: imageUrl.contains('base64') 
              ? null 
              : Text(
                  username.isNotEmpty ? username[0].toUpperCase() : 'U',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: radius * 0.6,
                  ),
                ),
        );
      }
      
      // Check if it's a valid network image
      if (imageUrl.startsWith('http') || imageUrl.startsWith('data:image')) {
        return CircleAvatar(
          radius: radius,
          backgroundImage: NetworkImage(imageUrl),
          onBackgroundImageError: (exception, stackTrace) {
            print('Error loading image: $exception');
          },
          child: Text(
            username.isNotEmpty ? username[0].toUpperCase() : 'U',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: radius * 0.6,
            ),
          ),
        );
      }
      
      // Fallback to default avatar
      return CircleAvatar(
        radius: radius,
        backgroundImage: NetworkImage(_getDefaultProfileImage(username)),
        child: Text(
          username.isNotEmpty ? username[0].toUpperCase() : 'U',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: radius * 0.6,
          ),
        ),
      );
    } catch (e) {
      print('Error building profile image: $e');
      return CircleAvatar(
        radius: radius,
        backgroundColor: Colors.blue,
        child: Text(
          username.isNotEmpty ? username[0].toUpperCase() : 'U',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: radius * 0.6,
          ),
        ),
      );
    }
  }

  Uint8List _base64ToImage(String base64String) {
    try {
      // Extract the base64 data from the string
      final parts = base64String.split(',');
      if (parts.length > 1) {
        base64String = parts[1];
      }
      
      // Decode base64 to bytes
      return base64.decode(base64String);
    } catch (e) {
      print('Error decoding base64 image: $e');
      // Return a simple placeholder image bytes
      return Uint8List(0);
    }
  }

  String _formatTime(DateTime time) {
    final now = DateTime.now();
    final difference = now.difference(time);

    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} min ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
    } else {
      return '${time.day}/${time.month}/${time.year}';
    }
  }

  List<Map<String, dynamic>> get filteredConversations {
    if (_searchQuery.isEmpty) {
      return _conversations;
    }
    return _conversations
        .where(
          (conversation) =>
              conversation['username'].toLowerCase().contains(
                _searchQuery.toLowerCase(),
              ) ||
              (conversation['name']?.toString().toLowerCase().contains(
                    _searchQuery.toLowerCase(),
                  ) ??
                  false),
        )
        .toList();
  }

  List<Map<String, dynamic>> get filteredUsers {
    if (_searchQuery.isEmpty) {
      return [];
    }
    return _allUsers
        .where(
          (user) =>
              user['username'].toLowerCase().contains(
                _searchQuery.toLowerCase(),
              ) ||
              (user['name']?.toString().toLowerCase().contains(
                    _searchQuery.toLowerCase(),
                  ) ??
                  false) ||
              (user['email']?.toString().toLowerCase().contains(
                    _searchQuery.toLowerCase(),
                  ) ??
                  false),
        )
        .toList();
  }

  void _startChatWithUser(Map<String, dynamic> user) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatScreen(
          username: user['username'],
          userImage: user['userImage'],
          isOnline: user['isOnline'],
          userId: user['uid'],
        ),
      ),
    );
  }

  Future<void> _addFriend(String friendId) async {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) return;

      await _firestore.collection('users').doc(currentUser.uid).update({
        'friends': FieldValue.arrayUnion([friendId]),
      });

      // Also add current user to the friend's friends list
      await _firestore.collection('users').doc(friendId).update({
        'friends': FieldValue.arrayUnion([currentUser.uid]),
      });

      // Refresh the data
      await _loadUsersAndConversations();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Friend added successfully!'),
          backgroundColor: Colors.green,
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to add friend: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _slideController.dispose();
    _backgroundController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Animated Background
          AnimatedBuilder(
            animation: _backgroundAnimation,
            builder: (context, child) {
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.lerp(
                        Colors.pink.shade400,
                        Colors.pink.shade500,
                        _backgroundAnimation.value,
                      )!,
                      Color.lerp(
                        Colors.purple.shade400,
                        Colors.purple.shade500,
                        _backgroundAnimation.value,
                      )!,
                      Color.lerp(
                        Colors.deepPurple.shade400,
                        Colors.deepPurple.shade500,
                        _backgroundAnimation.value,
                      )!,
                      Color.lerp(
                        Colors.indigo.shade400,
                        Colors.indigo.shade500,
                        _backgroundAnimation.value,
                      )!,
                    ],
                    stops: [0.0, 0.3, 0.7, 1.0],
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment.topRight,
                      radius: 1.6,
                      colors: [
                        Colors.white.withOpacity(0.1),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              );
            },
          ),

          // Main Content
          SafeArea(
            child: Column(
              children: [
                // App Bar
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () => Navigator.pop(context),
                        ),
                        Spacer(),
                        Text(
                          'Messages',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.edit_outlined, color: Colors.white),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'New message feature coming soon!',
                                ),
                                backgroundColor: Colors.blue,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                // Search Bar
                SlideTransition(
                  position: _slideAnimation,
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: Container(
                      margin: EdgeInsets.all(16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),
                      child: TextField(
                        controller: _searchController,
                        onChanged: (value) {
                          setState(() {
                            _searchQuery = value;
                          });
                        },
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Search users...',
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                          ),
                          border: InputBorder.none,
                          icon: Icon(Icons.search, color: Colors.white),
                          suffixIcon: _searchQuery.isNotEmpty
                              ? IconButton(
                                  icon: Icon(Icons.clear, color: Colors.white),
                                  onPressed: () {
                                    _searchController.clear();
                                    setState(() {
                                      _searchQuery = '';
                                    });
                                  },
                                )
                              : null,
                        ),
                      ),
                    ),
                  ),
                ),

                // Conversations List or Search Results
                Expanded(
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: FadeTransition(
                      opacity: _fadeAnimation,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.95),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: _isLoading
                            ? Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircularProgressIndicator(),
                                    SizedBox(height: 16),
                                    Text(
                                      'Loading conversations...',
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                  ],
                                ),
                              )
                            : _searchQuery.isNotEmpty
                                ? _buildSearchResults()
                                : _buildConversationsList(),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConversationsList() {
    if (_conversations.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat_bubble_outline, size: 64, color: Colors.grey[400]),
            SizedBox(height: 16),
            Text(
              'No conversations yet',
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Start a chat with your friends!',
              style: TextStyle(color: Colors.grey[500], fontSize: 14),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _searchQuery = ' ';
                  _searchController.text = ' ';
                });
              },
              child: Text('Find Friends'),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: _conversations.length,
      itemBuilder: (context, index) {
        final conversation = _conversations[index];
        return Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey[200]!, width: 0.5),
            ),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            leading: Stack(
              children: [
                _buildProfileImage(
                  conversation['userImage'], 
                  conversation['username'],
                  radius: 28,
                ),
                if (conversation['isOnline'])
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
              ],
            ),
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    conversation['username'],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Text(
                  conversation['time'],
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
              ],
            ),
            subtitle: Row(
              children: [
                if (conversation['isTyping'])
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Icons.keyboard, color: Colors.blue, size: 16),
                        SizedBox(width: 4),
                        Text(
                          'typing...',
                          style: TextStyle(
                            color: Colors.blue,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  )
                else
                  Expanded(
                    child: Text(
                      conversation['lastMessage'],
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                if (conversation['unreadCount'] > 0)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '${conversation['unreadCount']}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(
                    username: conversation['username'],
                    userImage: conversation['userImage'],
                    isOnline: conversation['isOnline'],
                    userId: conversation['uid'],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildSearchResults() {
    final results = filteredUsers;

    if (results.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search_off, size: 64, color: Colors.grey[400]),
            SizedBox(height: 16),
            Text(
              'No users found',
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Try searching with different keywords',
              style: TextStyle(color: Colors.grey[500], fontSize: 14),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final user = results[index];
        final isFriend = _friends.any((friend) => friend['uid'] == user['uid']);

        return Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey[200]!, width: 0.5),
            ),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            leading: Stack(
              children: [
                _buildProfileImage(
                  user['userImage'], 
                  user['username'],
                  radius: 28,
                ),
                if (user['isOnline'])
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
              ],
            ),
            title: Text(
              user['username'],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Text(
              user['name']?.isNotEmpty == true ? user['name'] : user['email'],
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
            trailing: isFriend
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Friend',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  )
                : ElevatedButton(
                    onPressed: () {
                      _addFriend(user['uid']);
                    },
                    child: Text('Add Friend'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                    ),
                  ),
            onTap: () => _startChatWithUser(user),
          ),
        );
      },
    );
  }
}
```












...................Chat Screen page......................

# ChatScreen er Code






```
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatefulWidget {
  final String username;
  final String userImage;
  final bool isOnline;
  final String userId;

  const ChatScreen({
    super.key,
    required this.username,
    required this.userImage,
    required this.isOnline,
    required this.userId,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late AnimationController _slideController;
  late AnimationController _backgroundController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _backgroundAnimation;

  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String? _currentUserId;
  String? _conversationId;
  List<Map<String, dynamic>> _messages = [];
  StreamSubscription? _messagesSubscription;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _initializeChat();
  }

  void _initializeAnimations() {
    _fadeController = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    );

    _slideController = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );

    _backgroundController = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _fadeController, curve: Curves.easeInOut),
    );

    _slideAnimation = Tween<Offset>(begin: Offset(0, 0.3), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: _slideController, curve: Curves.easeOutCubic),
        );

    _backgroundAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _backgroundController, curve: Curves.easeInOut),
    );

    _fadeController.forward();
    _slideController.forward();
    _backgroundController.repeat(reverse: true);
  }

  void _initializeChat() async {
    final currentUser = _auth.currentUser;
    if (currentUser == null) return;

    _currentUserId = currentUser.uid;

    // Get or create conversation ID
    _conversationId = await _getOrCreateConversationId();

    // Listen for real-time messages
    _setupMessageListener();
  }

  Future<String> _getOrCreateConversationId() async {
    final currentUser = _auth.currentUser;
    if (currentUser == null) return '';

    // Create a unique conversation ID based on user IDs
    final participants = [currentUser.uid, widget.userId]..sort();
    final conversationId = participants.join('_');

    // Check if conversation exists
    final conversationDoc = await _firestore
        .collection('conversations')
        .doc(conversationId)
        .get();

    if (!conversationDoc.exists) {
      // Create new conversation
      await _firestore.collection('conversations').doc(conversationId).set({
        'participants': participants,
        'lastMessage': '',
        'lastMessageTime': FieldValue.serverTimestamp(),
        'lastMessageSender': '',
        'unreadCount': {currentUser.uid: 0, widget.userId: 0},
        'createdAt': FieldValue.serverTimestamp(),
      });
    }

    return conversationId;
  }

  void _setupMessageListener() {
    if (_conversationId == null) return;

    _messagesSubscription = _firestore
        .collection('conversations')
        .doc(_conversationId)
        .collection('messages')
        .orderBy('timestamp', descending: false)
        .snapshots()
        .listen((snapshot) {
          if (mounted) {
            setState(() {
              _messages = snapshot.docs.map((doc) {
                final data = doc.data();
                return {
                  'id': doc.id,
                  'text': data['text'] ?? '',
                  'isMe': data['senderId'] == _currentUserId,
                  'time': _formatTime(
                    data['timestamp']?.toDate() ?? DateTime.now(),
                  ),
                  'isRead': data['isRead'] ?? false,
                  'timestamp': data['timestamp']?.toDate() ?? DateTime.now(),
                  'senderId': data['senderId'],
                };
              }).toList();
            });

            // Auto-scroll to bottom when new message arrives
            Future.delayed(Duration(milliseconds: 100), () {
              if (_scrollController.hasClients) {
                _scrollController.animateTo(
                  _scrollController.position.maxScrollExtent,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                );
              }
            });

            // Mark messages as read
            _markMessagesAsRead();
          }
        });
  }

  String _formatTime(DateTime time) {
    final now = DateTime.now();
    final difference = now.difference(time);

    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} min ago';
    } else if (difference.inHours < 24) {
      return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
    } else {
      return '${time.day}/${time.month}/${time.year}';
    }
  }

  void _markMessagesAsRead() async {
    if (_conversationId == null || _currentUserId == null) return;

    final unreadMessages = _messages
        .where((message) => !message['isMe'] && !message['isRead'])
        .toList();

    for (var message in unreadMessages) {
      await _firestore
          .collection('conversations')
          .doc(_conversationId)
          .collection('messages')
          .doc(message['id'])
          .update({'isRead': true});
    }

    // Update conversation unread count
    if (unreadMessages.isNotEmpty) {
      await _firestore.collection('conversations').doc(_conversationId).update({
        'unreadCount.$_currentUserId': 0,
      });
    }
  }

  void _sendMessage() async {
    if (_messageController.text.trim().isEmpty ||
        _conversationId == null ||
        _currentUserId == null) {
      return;
    }

    final messageText = _messageController.text.trim();
    _messageController.clear();

    try {
      // Add message to Firestore
      final messageData = {
        'text': messageText,
        'senderId': _currentUserId,
        'timestamp': FieldValue.serverTimestamp(),
        'isRead': false,
      };

      await _firestore
          .collection('conversations')
          .doc(_conversationId)
          .collection('messages')
          .add(messageData);

      // Update conversation last message
      await _firestore.collection('conversations').doc(_conversationId).update({
        'lastMessage': messageText,
        'lastMessageTime': FieldValue.serverTimestamp(),
        'lastMessageSender': _currentUserId,
        'unreadCount.${widget.userId}': FieldValue.increment(1),
      });
    } catch (e) {
      print('Error sending message: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to send message'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  void dispose() {
    _messagesSubscription?.cancel();
    _fadeController.dispose();
    _slideController.dispose();
    _backgroundController.dispose();
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Animated Background
          AnimatedBuilder(
            animation: _backgroundAnimation,
            builder: (context, child) {
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.lerp(
                        Colors.green.shade400,
                        Colors.green.shade500,
                        _backgroundAnimation.value,
                      )!,
                      Color.lerp(
                        Colors.teal.shade400,
                        Colors.teal.shade500,
                        _backgroundAnimation.value,
                      )!,
                      Color.lerp(
                        Colors.cyan.shade400,
                        Colors.cyan.shade500,
                        _backgroundAnimation.value,
                      )!,
                      Color.lerp(
                        Colors.blue.shade400,
                        Colors.blue.shade500,
                        _backgroundAnimation.value,
                      )!,
                    ],
                    stops: [0.0, 0.3, 0.7, 1.0],
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment.center,
                      radius: 1.4,
                      colors: [
                        Colors.white.withOpacity(0.08),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              );
            },
          ),

          // Main Content
          SafeArea(
            child: Column(
              children: [
                // App Bar
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () => Navigator.pop(context),
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(widget.userImage),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.username,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                      color: widget.isOnline
                                          ? Colors.green
                                          : Colors.grey,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    widget.isOnline ? 'Online' : 'Offline',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.video_call, color: Colors.white),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Video call feature coming soon!',
                                ),
                                backgroundColor: Colors.blue,
                              ),
                            );
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.call, color: Colors.white),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Voice call feature coming soon!',
                                ),
                                backgroundColor: Colors.blue,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                // Messages
                Expanded(
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: FadeTransition(
                      opacity: _fadeAnimation,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.95),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            // Messages List
                            Expanded(
                              child: _messages.isEmpty
                                  ? Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.chat_bubble_outline,
                                            size: 64,
                                            color: Colors.grey[400],
                                          ),
                                          SizedBox(height: 16),
                                          Text(
                                            'No messages yet',
                                            style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            'Start a conversation!',
                                            style: TextStyle(
                                              color: Colors.grey[500],
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : ListView.builder(
                                      controller: _scrollController,
                                      padding: EdgeInsets.all(16),
                                      itemCount: _messages.length,
                                      itemBuilder: (context, index) {
                                        final message = _messages[index];
                                        return Container(
                                          margin: EdgeInsets.only(bottom: 12),
                                          child: Row(
                                            mainAxisAlignment: message['isMe']
                                                ? MainAxisAlignment.end
                                                : MainAxisAlignment.start,
                                            children: [
                                              if (!message['isMe'])
                                                CircleAvatar(
                                                  radius: 16,
                                                  backgroundImage: NetworkImage(
                                                    widget.userImage,
                                                  ),
                                                ),
                                              SizedBox(width: 8),
                                              Flexible(
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 16,
                                                    vertical: 10,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: message['isMe']
                                                        ? Colors.blue
                                                        : Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        message['isMe']
                                                        ? CrossAxisAlignment.end
                                                        : CrossAxisAlignment
                                                              .start,
                                                    children: [
                                                      Text(
                                                        message['text'],
                                                        style: TextStyle(
                                                          color: message['isMe']
                                                              ? Colors.white
                                                              : Colors.black,
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                      SizedBox(height: 4),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            message['time'],
                                                            style: TextStyle(
                                                              color:
                                                                  message['isMe']
                                                                  ? Colors.white
                                                                        .withOpacity(
                                                                          0.7,
                                                                        )
                                                                  : Colors
                                                                        .grey[600],
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                          if (message['isMe']) ...[
                                                            SizedBox(width: 4),
                                                            Icon(
                                                              message['isRead']
                                                                  ? Icons
                                                                        .done_all
                                                                  : Icons.done,
                                                              color:
                                                                  message['isRead']
                                                                  ? Colors
                                                                        .lightBlueAccent
                                                                  : Colors.white
                                                                        .withOpacity(
                                                                          0.7,
                                                                        ),
                                                              size: 14,
                                                            ),
                                                          ],
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 8),
                                              if (message['isMe'])
                                                CircleAvatar(
                                                  radius: 16,
                                                  backgroundImage: NetworkImage(
                                                    _auth
                                                            .currentUser
                                                            ?.photoURL ??
                                                        'https://picsum.photos/40/40?random=1',
                                                  ),
                                                ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                            ),

                            // Message Input
                            Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(color: Colors.grey[300]!),
                                ),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.attach_file,
                                      color: Colors.grey[600],
                                    ),
                                    onPressed: () {
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'File attachment coming soon!',
                                          ),
                                          backgroundColor: Colors.blue,
                                        ),
                                      );
                                    },
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[100],
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: TextField(
                                        controller: _messageController,
                                        decoration: InputDecoration(
                                          hintText: 'Type a message...',
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                        onSubmitted: (value) {
                                          _sendMessage();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  GestureDetector(
                                    onTap: _sendMessage,
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.send,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

```