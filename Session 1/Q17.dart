void main(){
//    Question 17
//   If you need a variable that can hold any type of value and may change during
//  execution, which data type would you use? Write a code example to show this.
//--------------------------------------
//Answer : we use dynamic data type
  dynamic dynamicVar;
  dynamicVar = "Here im String";
  print(dynamicVar);
  dynamicVar = 15;
  print("Here im int: $dynamicVar");
  dynamicVar = 10.65;
  print("Here im double: $dynamicVar");
  // took the code from Q5 kinda lazy sorry xD
}
