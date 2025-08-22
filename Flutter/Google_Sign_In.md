# Google Sign-In ইমপ্লিমেন্ট করা

ধাপ ১: প্রয়োজনীয় প্যাকেজ যোগ করুন

 - আপনি sign_in_button প্যাকেজ ব্যবহার করছেন Google Sign-In বাটনের জন্য। Google Sign-In ফাংশনালিটির জন্য আপনার google_sign_in প্যাকেজও দরকার।

## 1. pubspec.yaml ফাইলে ডিপেন্ডেন্সি যোগ করুন:

 - আপনার প্রজেক্টের pubspec.yaml ফাইলে নিশ্চিত করুন নিম্নলিখিত ডিপেন্ডেন্সি যোগ করা আছে: 
     
      ```
      dependencies:
      flutter:
        sdk: flutter
      firebase_auth: ^5.2.0
      google_sign_in: ^6.2.1
      sign_in_button: ^3.2.0
      ```

- প্যাকেজগুলো ইনস্টল করুন:

    ```
    flutter pub get
    ```

## 2. ইমপোর্ট যোগ করুন:

আপনার LoginScreen কোডে google_sign_in প্যাকেজ ইমপোর্ট করুন। এটি আমি নতুন কোডে যোগ করব।

# ধাপ ২: Firebase-এ Google Sign-In কনফিগার করুন

- Google Sign-In ব্যবহার করতে Firebase কনসোলে Google প্রোভাইডার সেটআপ করতে হবে।

## 1. Firebase কনসোলে যান:

  - Firebase Console এ যান।
  - আপনার প্রজেক্ট সিলেক্ট করুন (যেমন, - - - firebase_authentication_app)।
  - Authentication > Sign-in method এ যান।
  - Google প্রোভাইডার সিলেক্ট করে Enable করুন।
  - Web Client ID এবং Web Client Secret সেভ করুন (এগুলো পরে লাগবে)।


## 2. Android-এর জন্য SHA-1 ফিঙ্গারপ্রিন্ট যোগ করুন:

  - আপনার প্রজেক্টের android/app/build.gradle ফাইলে applicationId দেখুন।
  - SHA-1 ফিঙ্গারপ্রিন্ট পেতে, টার্মিনালে চালান:
  ```
textkeytool -list -v -keystore "C:\Users\<YourUsername>\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android
  ```


  - SHA-1 ফিঙ্গারপ্রিন্ট কপি করুন।


-Firebase কনসোলে Project Settings > Your Apps > Android App এ গিয়ে SHA-1 যোগ করুন।
- নতুন google-services.json ফাইল ডাউনলোড করে android/app ফোল্ডারে রাখুন।
- নিশ্চিত করুন android/build.gradle এ Google Services প্লাগিন যোগ করা আছে:
```
gradlebuildscript {
  dependencies {
    classpath 'com.google.gms:google-services:4.4.2'
  }
}
```

- android/app/build.gradle এ:
```
gradleapply plugin: 'com.google.gms.google-services'
```


## 3. iOS-এর জন্য (যদি প্রয়োজন হয়):

- Firebase কনসোলে iOS অ্যাপ যোগ করুন এবং GoogleService-Info.plist ফাইল ios/Runner ফোল্ডারে রাখুন।
- Xcode এ URL Types এ Google Client ID যোগ করুন।


# ধাপ ৩: Google Sign-In ফাংশনালিটি ইমপ্লিমেন্ট করুন:

- আপনার কোডে Google Sign-In বাটনের onPressed ফাংশনটি খালি আছে (onPressed: () {})। আমি এটি ইমপ্লিমেন্ট করব এবং বাকি কোড অপরিবর্তিত রাখব।

## Google Sign-In ফাংশন:

- নিচে আমি আপনার কোড আপডেট করব, শুধু Google Sign-In ফাংশনালিটি যোগ করে।
- নতুন ফাংশন _signInWithGoogle যোগ করা হবে, যা Google Sign-In প্রক্রিয়া হ্যান্ডল করবে।



- নিচে আপনার LoginScreen কোডের সম্পূর্ণ সংস্করণ দেওয়া হলো, যেখানে শুধু Google Sign-In ফাংশনালিটি যোগ করা হয়েছে।

```
  Future<void> _signInWithGoogle() async {
    if (_isLoading) return; // Prevent multiple sign-in attempts

    setState(() => _isLoading = true);

    try {
      // Trigger the Google Sign-In flow
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        // User cancelled the sign-in
        setState(() => _isLoading = false);
        return;
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credential
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase with the Google credential
      await FirebaseAuth.instance.signInWithCredential(credential);

      // Navigate to home screen
      Navigator.pushReplacementNamed(context, "/home");
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Google Sign-In failed. Try again later.'),
        ),
      );
    } finally {
      setState(() => _isLoading = false);
    }
  }
```


- jekhane button create kora hoise shekhane niser code ta implement kora hoyese

```
SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: SignInButton(
                      Buttons.google,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      text: "Sign in with Google",
                      padding: const EdgeInsets.all(8),
                      onPressed: () {
                        _signInWithGoogle();
                      },
                    ),
                  ),
```

