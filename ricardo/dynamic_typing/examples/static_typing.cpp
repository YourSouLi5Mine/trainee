#include <iostream>
using namespace std;

int main() {
  int age = 22;
  cout << "age:" << age << endl;
  age = 23;
  cout << "age:" << age << endl;
  age = "Ricardo"; // Expected error here.
  cout << age;
  return 0;
}
