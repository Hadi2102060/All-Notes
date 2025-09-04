/*
................Dart Collections or List...............

// Collections are used to store multiple values in a single variable.

// collection mane holo onek gula value ke akta variable er modde store kora.
jake bola hoy set of objects.


// There are three types of collections in dart:
1. List  --> static and dynamic
2. Set
3. Map



1. List : 
    
    // List is an ordered way collection of items where each item can be accessed by its index.
  
    // List er modde value gula index er maddhome access kora jay.
    Index always start from 0.
  
    // For example:
  
    List<int> numbers = [10, 20, 30, 40, 50]; // static list
    print(numbers[0]); // output: 10
    print(numbers[1]); // output: 20
  
    List<dynamic> mixedList = [10, "Hello", true, 20.5]; // dynamic list
    print(mixedList[0]); // output: 10
    print(mixedList[1]); // output: Hello



    // List er modde value add, remove, update kora jay.

    // For example:
    List<String> fruitsList = ["Apple", "Banana", "Orange"];
    fruitsList.add("Mango"); // add value
    print(fruits); // output: [Apple, Banana, Orange, Mango]
    fruitsList.remove("Banana"); // remove value
    print(fruitsList); // output: [Apple, Orange, Mango]
    fruitsList[0] = "Grapes"; // update value
    print(fruitsList); // output: [Grapes, Orange, Mango]
    print(fruitsList.length); // output: 3
    print(fruitsList.isEmpty); // output: false
    print(fruitsList.isNotEmpty); // output: true
    fruitsList.clear(); // clear all values
    print(fruitsList); // output: []

    // List er modde loop use kore value access kora jay.
    // For example:
    List<String> colorsList = ["Red", "Green", "Blue"];
    for (String color in colorsList) {
      print(color);
    }
    // output:
    // Red
    // Green

    // List er modde index use kore value access kora jay.
    // For example:
    for (int i = 0; i < colorsList.length; i++) {
      print(colorsList[i]);
    }
    // output:
    // Red
    // Green
    // Blue










    // list condition ::

    List<int> listNo =[10,20,30,40,50];

          1. listNo.add(value);  --> add value to the list
          2. listNo.remove(value); --> remove value from the list
          3. listNo.removeAt(index); --> remove value at the index
          4. listNo.insert(index, value); --> insert value at the index
          5. listNo[index] = value; --> update value at the index
          6. listNo.length; --> get the length of the list
          7. listNo.isEmpty; --> check if the list is empty
          8. listNo.isNotEmpty; --> check if the list is not empty
          9. listNo.clear(); --> clear all values from the list
          8. listNo.insertAll(index, [value1, value2, ...]); --> insert multiple values at the index
          9. listNo.addAll([value1, value2, ...]); --> add multiple values to the list
          10. listNo.indexOf(value); --> get the index of the value
          11. listNo.contains(value); --> check if the list contains the value
          12. listNo.sort(); --> sort the list in ascending order
          13. listNo.reversed; --> get the reversed list
          14. listNo.sublist(startIndex, endIndex); --> get the sublist
          15. listNo.forEach((value) { // do something with value }); --> loop through the list
          16. listNo.map((value) { // do something with value }); --> map
          17. listNo.where((value) { // do something with value }); --> filter
          18. listNo.reduce((value1, value2) { // do something with value1 and value2 }); --> reduce
          19. listNo.fold(initialValue, (previousValue, element) { // do something with previousValue and element }); --> fold

















 */
