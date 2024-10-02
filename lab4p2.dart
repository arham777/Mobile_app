// SETS

// 1) Declare an empty set named mySet in Dart.
// import 'dart:io';
// void main(){ 
//   Set<String> newSet = { };
//   print(newSet);
// }

// 2) Add the numbers 10, 20, and 30 to the set.

// import 'dart:io';
// void main(){ 
//   Set<int> newSet = { 10,20 ,30 };
//   print(newSet);
// }


// 3) Remove the number 20 from the set. 
// import 'dart:io';
// void main(){
//   Set<int> newSet = { 10, 20 ,30 };
//   print(newSet);
//   newSet.remove(20);
//   print(newSet);
// }


// 4) Check if the set contains the number 15.

// import 'dart:io';
// void main(){

//   Set<int> newSet = { 10, 20 ,30 };
//   print(newSet);
//    print ("Using forEach in set:");
//    newSet.forEach((element) {
//   if (element == 15) { 
//       print("Found"); 
//     } else { 
//       print("Not Found");
//     }
//   });

// }

// 5) Create another set named otherSet with numbers 20, 30, and 40.
// import 'dart:io';
// void main(){

//   Set<int> otherSet = { 20 ,30,40 };
//   print(otherSet);
// }

// 6) Find the union of mySet and otherSet. 

// import 'dart:io';
// void main(){
//   Set<int> mySet = { 10, 20 ,30 };
//   print(mySet);
//   Set<int> otherSet = { 20 ,30,40 };
//   print(otherSet);

//   Set<int> unionSet = mySet.union(otherSet);
//   print(unionSet);

// }

// 7) Find the intersection of mySet and otherSet. 

// import 'dart:io';
// void main(){
//   Set<int> mySet = { 10, 20 ,30 };
//   print(mySet);
//   Set<int> otherSet = { 20 ,30,40 };
//   print(otherSet);

//   Set<int> intersectSet = mySet.intersection(otherSet);
//   print(intersectSet);
// }



// // 8) Find the difference between mySet and otherSet. 

// // import 'dart:io';
// // void main(){
// //   Set<int> mySet = { 10, 20 ,30 };
// //   print(mySet);
// //   Set<int> otherSet = { 20 ,30,40 };
// //   print(otherSet);

// //   Set<int> diffSet = mySet.difference(otherSet);
// //   print(diffSet);
// // }

// // 9) Print each element in mySet using a forEach() method. 

// // import 'dart:io';
// // void main(){
// //   Set<int> mySet = { 10, 20 ,30 };
// //   print(mySet);

// //   mySet.forEach((value) {
// //     print(value);
// //   });

// // }


// // 10) Consider a set of unique employee names in a company. Create a Dart program that 
// // performs the following tasks: 
// // a. Initialize a set named employeeSet with at least three unique employee names. 
// // b. Convert the set to a list named employeeList. 
// // c. Convert the set to a map named employeeMap where the employee names are used as 
// // keys, and their corresponding employee IDs (IDs can be arbitrary) are used as values. 
// // d. Print the original set, the converted list, and the converted map.

// import 'dart:io';
// void main(){
//   Set<String> employee = { 'e1', 'e2', 'e3' };
//   print(" Employees  $employee");
//   List<String> empList = employee.toList();
//   print(' Employees List $empList');
//   Map<String, int> empMap = {};
//   int id =1001;
//  employee.forEach((emp) {
//    empMap[emp]= id;
//     id++;
//  });

//   print(" Employee Map $empMap");

// }



// MAP

// 1) Given the map: var studentGrades = {'Alice': 90, 'Bob': 85, 'Charlie': 95}; Perform the following operations: a) Add a new student 'David' with a grade of 88. b) Update Bob's grade to 90. c) Remove the student 'Charlie' from the map.
// void main(){
//   var studentGrades = {'Alice': 90 , 'Bob': 85, 'Charlie': 92};
//   print(studentGrades);
//   studentGrades['David']= 88;
//   print(studentGrades);

//   studentGrades['Bob']= 90;
//   print(studentGrades);

//   studentGrades.remove('Charlie');
//   print(studentGrades);
// }

// 2) Iterate through the map created in question 1 and print each key-value pair.

// void main(){
//   var studentGrades = {'Alice': 90 , 'Bob': 85, 'Charlie': 92};
//   print(studentGrades);
//   studentGrades['David']= 88;
//   studentGrades['Bob']= 90;
//   studentGrades.remove('Charlie');

//   studentGrades.forEach((key, value) {
//     print('$key: $value');
//   });

// }

// 3) Create a map literal with keys as integers and values as strings. Add three key-value 
// pairs of your choice.

// void main(){
//   var newMap = {1: 'Alice', 2: 'Charlie', 3: 'Bob'};
//   newMap.forEach((key , value ){
//     print('$key , $value');
//   });

// }



