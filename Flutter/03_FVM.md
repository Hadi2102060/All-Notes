
# Flutter Version Manager(FVM)


- Flutter version manager(FVM) is a tool used to manage different versions of Flutter SDK on a developer's machine.

- Flutter is a popular open-source mobile application development framework, and its SDK is updated frequently with new features , bugs and improvements. 

- Sometimes , developers need to work with older versions of Flutter due to various reasons like compatibility issues to project requirements.


# Why FVM?

 - Multiple Flutter Versions for Different Projects:
      - Flutter এর নতুন ভার্সন প্রতি কয়েক সপ্তাহে আসে এবং কিছু নতুন features বা breaking changes আনে।

      - কখনো কখনো পুরনো প্রজেক্টে নতুন Flutter ভার্সন ব্যবহার করলে সমস্যা হতে পারে। এমন পরিস্থিতিতে FVM ব্যবহার করে তুমি একাধিক Flutter version সহজেই রাখতে পারো।

      - উদাহরণ:
      প্রজেক্ট A তে Flutter 3.5 ব্যবহার করছো, আর প্রজেক্ট B তে Flutter 2.10 ব্যবহার করছো। FVM দিয়ে তুমি যেকোনো সময় যেকোনো version switch করতে পারবে।
 - Easy Version Switching:
     - তুমি যেকোনো Flutter version একটা কমান্ড দিয়ে সুইচ করতে পারো। যেমন:
     ```
     fvm use 3.0.5

     ```
- Team Collaboration:
     - তোমার দলের (team) মধ্যে সকলেই একই Flutter version ব্যবহার করবে, এমনটা নিশ্চিত করতে FVM ব্যবহার করা হয়।

     - প্রজেক্টের রুট ফোল্ডারে .fvm ফোল্ডার থাকলে সকল ডেভেলপার জানবে কোন version ব্যবহার করতে হবে।

- Prevent Breaking Changes:
     - যখন Flutter এর নতুন ভার্সন বের হয়, অনেক সময় পুরনো প্রজেক্টগুলো নতুন version এ break হয়ে যেতে পারে। FVM দিয়ে তুমি সহজেই আগের stable version গুলো ব্যবহার করতে পারো।

     - ফিচার বা API changes থেকে বাঁচতে FVM তোমাকে version locking করতে দেয়। মানে, তোমার প্রজেক্টের জন্য নির্দিষ্ট version ব্যবহার করা হবে, যতক্ষণ না তুমি আপডেট করার সিদ্ধান্ত নাও।

- Easier for CI/CD Integration: 
     - Continuous Integration (CI) system এ যদি তোমার Flutter প্রজেক্টের জন্য নির্দিষ্ট version দরকার হয়, তবে FVM ব্যবহার করে তুমি নিশ্চিত করতে পারো যে নির্দিষ্ট version টিই সঠিকভাবে ব্যবহার হচ্ছে।

- Global vs Local Flutter Version:
     - Global version: তোমার পুরো সিস্টেমের জন্য যে version ব্যবহার করতে চাও।

     - Local version: প্রতি প্রজেক্টের জন্য আলাদা আলাদা version। এই version সাধারণত .fvm ফোল্ডারে থাকে।

     - FVM দিয়ে তুমি global এবং local ভার্সন দুইটিই আলাদাভাবে সেট করতে পারো।

- SDK testing requires constant channel switching.

- Channel switches are slow and need repeated reinstalls





# FVM  ব্যবহারের উদাহরণ

### 1. Install FVM 
   - প্রথমে তোমাকে FVM ইনস্টল করতে হবে:

   ```
   dart pub global activate fvm

   ```

### 2. Use a Specific Flutter Version 

  - Flutter এর একটা নির্দিষ্ট ভার্সন ব্যবহার করতে:

  ```
  fvm install 3.0.5
  fvm use 3.0.5

  ```

### 3. Check Installed Versions

  - তুমি বর্তমানে যেসব Flutter version ইন্সটল করেছো তা দেখতে:

  ```
  fvm list

  ```

### 4. Switch Versions 

  - অন্য কোনো version এ সুইচ করতে:

  ```
  fvm use 2.8.0

  ```




# FVM  এর সুবিধা

 - Version Compatibility: প্রকল্প অনুযায়ী Flutter এর ভার্সন চয়েস সহজে পরিবর্তন করা যায়।

 - Collaborative Development: সবার জন্য নির্দিষ্ট version নিশ্চিত করে, যাতে team এর সবাই একই environment এ কাজ করে।

 -  Seamless Integration: কমান্ড লাইনে Flutter ব্যবহার করা সহজ এবং ভুল version থেকে রক্ষা পাওয়া যায়।



