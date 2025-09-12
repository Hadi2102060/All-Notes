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



# What is Responsive  vs Adaptive 

 - **Responsive Design**  means  UI (User Interface) স্ক্রিনে যতটুকু জায়গা আছে, তার মধ্যে সুন্দরভাবে ফিট করানো।

- Adaptive Design means  UI শুধু ফিট না হয়ে বরং সেই ডিভাইসে ব্যবহারযোগ্য (usable) করে তোলা।

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