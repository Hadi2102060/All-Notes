/*

...................Dart Sets...................


Set is an unordered collection of unique items where each item can be accessed by its value.

set er modde value gula index er maddhome access kora jay na karon set is unordered collection.

For example:
      
            Set<int> numbersSet = {10, 20, 30, 40, 50}; // static set
            print(numbersSet.contains(20)); // output: true
            print(numbersSet.contains(60)); // output: false


            Set<dynamic> mixedSet = {10, "Hello", true, 20.5}; // dynamic set
            print(mixedSet.contains("Hello")); // output: true
            print(mixedSet.contains("World")); // output: false















 */

class Test {
  add() {
    Set items = {1, 2, 3, 4, 5};
    print(items);

    Set items2 = {6, 7, 8, 9, 10};
    items.addAll(items2);
    print(items);
  }
}

void main() {
  Test obj = Test();
  obj.add();
}
