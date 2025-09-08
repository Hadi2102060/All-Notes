# All type of command that exist in Flutter 


## !.  flutter analyze -d (device id) :  

- flutter analyze -d (device id) কমান্ডটি মূলত আপনার Flutter প্রোজেক্টের কোডকে স্থিরভাবে বিশ্লেষণ (static analysis) করার জন্য ব্যবহৃত হয়

- এর মূল কাজ হলো আপনার কোডে সম্ভাব্য ত্রুটি(errors), বাগ(bugs) এবং warning and স্টাইলের ভুল খুঁজে বের করা, যা অ্যাপটি চালানোর আগেই ধরা পড়ে.

- For example : 
Lets assume iOS device ID is 00008030-001A444C3C58002D

     ```
     flutter analyze -d 00008030-001A444C3C58002D
     ```
   
## 2. flutter assemble -o (DIRECTORY) :
 
 - flutter assemble হলো Flutter-এর একটি লো-লেভেল কমান্ড, যা Flutter-এর build system এর নির্দিষ্ট অংশগুলো প্রক্রিয়া করতে ব্যবহৃত হয়

 - এই কমান্ডটি দিয়ে আপনি Flutter অ্যাপের নির্দিষ্ট build artifact (যেমন assets, kernel snapshot, বা platform-specific ফাইল) তৈরি করতে পারেন

 - এখানে -o (DIRECTORY) ফ্ল্যাগটির কাজ হলো বিল্ডের আউটপুট ফাইলগুলোকে একটি নির্দিষ্ট ডিরেক্টরিতে সংরক্ষণ করা।

 - Build artifact হচ্ছে তোমার source code (যেমন Flutter/Dart ফাইল, assets, resources) থেকে build করার সময় যেসব output ফাইল তৈরি হয়, সেগুলোকেই বোঝায়।

 -   ###  Flutter এ Build Artifact: 

- Flutter প্রজেক্টে যখন তুমি flutter build চালাও (যেমন flutter build apk, flutter build ios, flutter build web), তখন Flutter তোমার Dart কোড, assets, dependencies সবগুলোকে compile & package করে একটা deployable artifact বানায়।

- উদাহরণ:

    - Android build artifact

        - .apk (Android Package) → ডিভাইসে install করা যায়

        - .aab (Android App Bundle) → Play Store এ upload করার জন্য

    - Intermediate files:

        - build/app/outputs/flutter-apk/app-debug.apk

        - build/app/outputs/bundle/release/app-release.aab

    - iOS build artifact

        - .ipa (iOS App archive) → iPhone এ install করার জন্য

        - .app folder (Simulator বা Xcode-run এর জন্য)

    - Web build artifact

        - index.html, main.dart.js, assets/ → Browser এ deploy করার জন্য

        - Location: build/web/

    - Desktop build artifact (Windows, macOS, Linux)

        - Windows → .exe file

        - macOS → .app bundle

        - Linux → Binary executable


- ### Build Process এ Artifact তৈরির ধাপ

    - Source code → Intermediate files
        - Dart কোডকে compile করে .dill / .kernel intermediate format বানানো হয়।

    - Intermediate → Machine code/JS

        - Android/iOS এর জন্য → AOT (Ahead of Time) compiled machine code

        - Web এর জন্য → JS (main.dart.js)

    - Packaging

        - Native libraries (.so, .framework)

        - Assets (images, fonts, json, etc.)

        - Manifest, Gradle/Maven configs
         সব একসাথে package হয়ে final artifact তৈরি হয়।
    
- ## For Example :
    - ধরুন, আপনি আপনার Flutter অ্যাপের শুধুমাত্র assets কম্পাইল করতে চান এবং সেগুলো একটি নির্দিষ্ট ফোল্ডারে সেভ করতে চান। তাহলে আপনি কমান্ডটি ব্যবহার করতে পারেন:

    ```
    flutter assemble -o /my/output/folder assemble_release_assets
    ```

    - assemble_release_assets হলো build target, যা শুধুমাত্র assets কম্পাইল করবে।
    - -o /my/output/folder নির্দেশ করে যে আউটপুট ফাইলগুলো /my/output/folder ডিরেক্টরিতে সেভ হবে।





## 3. flutter attach -d (DEVICE_ID) : 

  - flutter attach -d (DEVICE_ID) একটি চলমান Flutter অ্যাপের সাথে Flutter টুল সংযুক্ত করে ডিবাগিং, হট রিলোড, বা লগ পর্যবেক্ষণের জন্য।

  - কাজ: চলমান অ্যাপে সংযোগ, হট রিলোড/রিস্টার্ট, এবং লগ সংগ্রহ।

  - ব্যবহারের কারণ: ইতিমধ্যে চলমান অ্যাপে দ্রুত পরিবর্তন বা ডিবাগিং করতে।

  - DEVICE_ID: নির্দিষ্ট ডিভাইস বা এমুলেটর নির্বাচন করতে।

  -  ###  For example: 
      -  ধরুন, আপনার একটি Flutter অ্যাপ ইতিমধ্যে emulator-5554 নামের একটি এমুলেটরে চলছে। এখন আপনি সেই অ্যাপে কোড পরিবর্তন করে হট রিলোড করতে চান। তাহলে কমান্ডটি হবে:

```
    flutter attach -d emulator-5554
```
- এটি Flutter টুলকে এমুলেটরে চলমান অ্যাপের সাথে সংযুক্ত করবে।
- এরপর আপনি কোডে পরিবর্তন করলে, r চাপলে হট রিলোড হবে, বা R চাপলে হট রিস্টার্ট হবে।
- এছাড়া, টার্মিনালে অ্যাপের লগ দেখতে পাবেন।




## 4. flutter bash-completion :

   - flutter bash-completion Flutter CLI-এর জন্য Bash শেলে অটো-কমপ্লিশন সুবিধা প্রদান করে।

   - কাজ: কমান্ড, সাব-কমান্ড, এবং ফ্ল্যাগগুলোর পরামর্শ দেওয়া, যা টাইপিং সহজ ও দ্রুত করে।

   - ব্যবহারের কারণ: ডেভেলপমেন্ট প্রক্রিয়া দ্রুত করা, ভুল কমানো, এবং প্রোডাক্টিভিটি বৃদ্ধি।

   - সেটআপ: Flutter থেকে completion স্ক্রিপ্ট জেনারেট করে Bash কনফিগারেশনে যোগ করতে হয়।

   - ## how to flutter bash-completion setup ?
        
        - Flutter-এর Bash Completion স্ক্রিপ্ট জেনারেট করা:
           Flutter নিজেই একটি bash completion স্ক্রিপ্ট প্রদান করে। এটি পেতে টার্মিনালে নিম্নলিখিত কমান্ডটি চালান:

           ```
           flutter bash-completion
           ```

        - স্ক্রিপ্ট সংরক্ষণ করা:
            আউটপুট স্ক্রিপ্টটি একটি ফাইলে সেভ করুন। উদাহরণস্বরূপ:

            ```
            flutter bash-completion > ~/.flutter_bash_completion
            ```

        - Bash শেলে স্ক্রিপ্ট যোগ করা:
            আপনার Bash কনফিগারেশন ফাইল (যেমন ~/.bashrc বা ~/.bash_profile) এডিট করে নিম্নলিখিত লাইন যোগ করুন:

            ```
            source ~/.flutter_bash_completion
            ```

        - শেল রিফ্রেশ করা:
            কনফিগারেশন ফাইল আপডেট করার পর, শেল রিফ্রেশ করুন:

            ```
            source ~/.bashrc
            ```
