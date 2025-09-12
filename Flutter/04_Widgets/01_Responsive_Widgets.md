# Responsive Widget Flutter 


Responsive Widget Flutter এ এমন ধরনের widget যা বিভিন্ন screen size এবং device orientation (portrait/landscape) অনুযায়ী UI কে adapt বা adjust করে। মূলত, responsive design হল এমন একটা design যেটি স্ক্রীনের সাইজ অনুযায়ী নিজেকে scale বা rearrange করে, যাতে UI সব devices এ ভালোভাবে দেখা যায়।

### Responsive Widget এর গুরুত্ব

  - **Device Independence**: একটাই কোডbase ব্যবহার করে অ্যাপকে multiple screen sizes এবং resolutions এ উপযোগী করা।

  - **User Experience (UX)**: ব্যবহারকারীদের জন্য ভালো অভিজ্ঞতা নিশ্চিত করা, যাতে অ্যাপ মোবাইল, ট্যাবলেট, ল্যাপটপ বা ডেস্কটপে সবখানেই সঠিকভাবে কাজ করে।

  - **Consistency**: Different screen sizes এ consistent experience প্রদান করা।


###  Responsive Widget এর মূল ধারণা:

Flutter এ responsive layout তৈরি করতে বেশ কয়েকটি approach ব্যবহার করা যায়। সবচেয়ে সাধারণভাবে MediaQuery, LayoutBuilder এবং OrientationBuilder ব্যবহার করা হয়।

   - ###### 1. MediaQuery

       - MediaQuery Flutter এ device এর screen size এবং resolution এর বিস্তারিত তথ্য জানায়। এটি ব্যবহার করে, তুমি অ্যাপের width, height, devicePixelRatio, orientation ইত্যাদি জানতে পারো। এর সাহায্যে responsive design তৈরি করা যায়।

       MediaQuery Example :

       ```
       class MyResponsiveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MediaQuery ব্যবহার করে device এর width ও height বের করা
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // Responsive UI তৈরি
    return Scaffold(
      appBar: AppBar(title: Text("Responsive UI")),
      body: Center(
        child: width < 600  // If width is less than 600, treat it as mobile view
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone_android, size: 100),
                  Text("Mobile View", style: TextStyle(fontSize: 20))
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.desktop_mac, size: 100),
                  Text("Desktop View", style: TextStyle(fontSize: 20))
                ],
              ),
           ),
        );
     }
    }
    ```
####  2. LayoutBuilder
#### 3. OrientationBuilder


# What is Responsive  vs Adaptive 

 - **Responsive Design**  means  UI (User Interface) স্ক্রিনে যতটুকু জায়গা আছে, তার মধ্যে সুন্দরভাবে ফিট করানো।

- **Adaptive Design** means  UI শুধু ফিট না হয়ে বরং সেই ডিভাইসে ব্যবহারযোগ্য (usable) করে তোলা।

### Responsive (রেস্পন্সিভ) :

  - যখন স্ক্রিন বড়–ছোট হয়, তখন একই লে-আউট (layout) নিজের অবস্থান পাল্টায়।

  - **উদাহরণ**: মোবাইল থেকে ট্যাব, ট্যাব থেকে ডেস্কটপ করলে কন্টেন্ট ছোট–বড় হবে বা কলামের সংখ্যা বদলাবে।

  - লক্ষ্য: “Fit into the space” — মানে যতটুকু জায়গা আছে, সেই অনুযায়ী adjust করে ফেলা।

### Adaptive (অ্যাডাপটিভ)

  - এখানে শুধু ফিট করানো না, বরং সেই ডিভাইসে কোন লে-আউট বা কন্ট্রোল ব্যবহার উপযুক্ত হবে, সেটা বেছে নেওয়া।

  - **উদাহরণ:**
     
      - ট্যাবলেটে bottom navigation-এর বদলে side navigation drawer ব্যবহার করা ভালো।

      - ফোনে touch input, কিন্তু ডেস্কটপে mouse + keyboard support লাগতে পারে।
  
  - লক্ষ্য: “Usable in the space” — মানে ডিভাইস ও ইউজারের ইনপুট অনুযায়ী ডিজাইন মানিয়ে নেওয়া।


## Real-Life example :

  - Responsive = জামা কাপড় elastic, তাই শরীর মোটা–পাতলা হলেও ফিট হয়।

  - Adaptive = আলাদা জামা ছোট, মাঝারি, বড় সাইজে তৈরি, যাতে আলাদা শরীর অনুযায়ী ব্যবহারযোগ্য হয়।


  ............................*****.................


  # This section covers various aspects of adaptive and responsive design : 

    - General Approach 
    - SafeArea and MediaQuery
    - Large screens and foldables
    - User input and policies 
    - Capabilities and policies
    - Best practices for adaptive apps
    - Additional resources


## 1. General Approach to adaptive apps : 
   
  - It means Flutter অ্যাপে বিভিন্ন ডিভাইসের জন্য কীভাবে রেসপনসিভ বা অ্যাডাপটিভ ডিজাইন তৈরি করা যায়, তা নিয়ে আলোচনা করা হয়েছে।

  - এখানে Google-এর ইঞ্জিনিয়ারদের প্রস্তাবিত একটি তিন ধাপের পদ্ধতি তুলে ধরা হয়েছে:
    
    - ধাপ ১: Abstract (অ্যাবস্ট্রাক্ট করা)

    - ধাপ ২: Measure (স্ক্রিন সাইজ পরিমাপ)

    - ধাপ ৩: Branch (ব্রাঞ্চিং বা UI পরিবর্তন)

    ### ধাপ ১: Abstract (অ্যাবস্ট্রাক্ট করা): 

      - প্রথমে, কোন কোন উইজেটকে ডাইনামিক করতে হবে তা নির্ধারণ করতে হবে।

      - যেমন: Dialog, Navigation UI (নিচের বার বা সাইড রেল), কাস্টম লেআউট ইত্যাদি।

      - উদাহরণস্বরূপ, ছোট স্ক্রিনে NavigationBar ব্যবহার করা যেতে পারে, আর বড় স্ক্রিনে NavigationRail।

      - এই তথ্যগুলোকে একটি Destination উইজেটে রাখা যেতে পারে যাতে আইকন ও টেক্সট লেবেল থাকে।

    ### ধাপ ২: Measure (স্ক্রিন সাইজ পরিমাপ): 
      Flutter-এ স্ক্রিন সাইজ পরিমাপের দুটি উপায় আছে:

      - ##### 1. MediaQuery
         
        - MediaQuery.sizeOf(context) ব্যবহার করে অ্যাপ উইন্ডোর সাইজ জানা যায়।

        - এটি আগের MediaQuery.of(context) এর চেয়ে বেশি পারফরম্যান্স-ফ্রেন্ডলি।

        - তবে এটি পুরো অ্যাপ উইন্ডোর সাইজ দেয়, শুধু একটি উইজেটের নয়।

      - ##### 2. LayoutBuilder

        - এটি প্যারেন্ট উইজেট থেকে কনস্ট্রেইন্টস (সীমা) দেয়, যেমন মিনিমাম ও ম্যাক্সিমাম সাইজ।

        - কাস্টম উইজেটের জন্য এটি বেশি উপযোগী, যেখানে আপনি শুধু নির্দিষ্ট অংশের সাইজ জানতে চান।

    ## ধাপ ৩: Branch (ব্রাঞ্চিং বা UI পরিবর্তন): 

      - স্ক্রিন সাইজ অনুযায়ী UI পরিবর্তন করতে হবে।

      - উদাহরণ: যদি উইন্ডোর প্রস্থ ৬০০ পিক্সেলের কম হয়, তাহলে NavigationBar ব্যবহার করুন; বেশি হলে NavigationRail।

      - ডিভাইসের ধরন নয়, উইন্ডোর সাইজের উপর ভিত্তি করে সিদ্ধান্ত নিতে হবে।



# এই পদ্ধতিগুলো অনুসরণ করলে Flutter অ্যাপকে ছোট থেকে বড় স্ক্রিন, এমনকি ফোল্ডেবল ডিভাইসেও সুন্দরভাবে উপস্থাপন করা যায় ।