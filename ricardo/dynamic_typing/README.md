# Dynamic typing
Ruby is a dynamic typed language, that means that when don't need to define variables nor types,
just assign values to them, this has its odds and cons.

## Dynamic typing (Ruby)
```ruby
age = 22
puts age
age = 23
puts age
age = 'Ricardo' # No error
puts age# Ruby is ok with this, types are not an issue.
```

## Static typing (C++)
```cpp
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
}// C++ has not dynamic typing, so, it will produce an error, we need to use another variable.
```

## Real example
Here's an example of the output of above codes.
![dynamic vs static typing](../images/dynamic_vs_static.png)

