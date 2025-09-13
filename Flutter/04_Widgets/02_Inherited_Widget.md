# Inherited Widget 

###  Flutter-এ Inherited Widget হলো এমন একটি সিস্টেম যেটা দিয়ে ডেটা widget tree-এর ভেতরে নিচের দিকে পাঠানো যায় খুবই সহজে এবং দক্ষতার সাথে।

### মানে, ধরো তোমার কাছে একটা বড় widget tree আছে সেখানে যদি তুমি parent widget থেকে কোনো data নিচের অনেকগুলো child widget-এ পাঠাতে চাও, সাধারণত তোমাকে constructor দিয়ে বারবার data pass করতে হয়।


## কিন্তু Inherited Widget থাকলে সেটা দরকার হয় না। Child widget সহজেই তার উপরে থাকা (ancestor) Inherited Widget থেকে ডেটা খুঁজে বের করে নিতে পারে।


## উদাহরণ : 

### ধরো তোমার একটা ThemeInheritedWidget আছে যেখানে রঙ (color) এর data রাখা হয়েছে।
- Parent widget-এ একবার data রাখবে।
- নিচের child widget গুলো constructor দিয়ে color পাঠানোর ঝামেলা না করে, সরাসরি ThemeInheritedWidget থেকে color নিয়ে নেবে।



## কেন দরকার?

  - বারবার data pass না করে সহজে শেয়ার করা যায়।
  -  Widget tree ছোট ও clean থাকে।
  -  যখন Inherited Widget-এর data পরিবর্তন হয়, তখন   যেসব child সেই data ব্যবহার করছে তাদের automatic rebuild হয়।


## Flutter-এ বাস্তবে কিভাবে হয়?

Inherited Widget এর উপর ভিত্তি করেই Provider, Bloc, Riverpod এর মতো state management প্যাকেজগুলো কাজ করে।

