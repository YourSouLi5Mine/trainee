# Access Modifiers
There are 4 basics `access modifiers`, global, class, instance and local, all this are defined by a
prefix, here are the prefixes:

- Global: `$`.
- Class: `@@`.
- Instance: `@`.
- Local: `_` or nothing.

## Scopes
- Global: everything.
- Class: only accessible within the class.
- Instance: only the instance, from the instance and within the instance class.
- Local: only within the current context.

## Example
```ruby
$global_var = 'Hello from outside'

class Person
  def self.greet
    'Greeting from Class'
  end

  def initialize
    ## heres if in any instance @@greet is modified, all instances will get the same value from this variable
    @@greet = 'greeting from class (everyone should get the same info)'
    @message = 'This is unique for instance'
  end

  def greet
  'Greeting from Instance'
  end

  def local
    # Here we define a local variable, the scope of this is only this method
    message = @@greet = @message
    message
  end
end
```

