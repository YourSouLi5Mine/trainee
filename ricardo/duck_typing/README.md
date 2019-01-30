# Duck Typing 🦆
Duck typing is 'rule' that says: If your class Duck walks, quacks and looks like a duck,
then it is a duck, otherwise, is anything but a duck.

This class follows duck typing rule. ✅
```ruby
class Duck
  def walk
    'Duck\'s walking'
  end

  def quack
    'Quack!!'
  end

  def appearance
    'Yup, it also looks like a Duck, look at him 🦆'
  end
end
```

This class doesn't follow duck typing rule. ❌
```ruby
class Duck
  def bark
    'Duck's quacki... wait, what?'
  end

  def appearance
    'Yup, it also looks like a Duck, look at him 🦄, oh, wait, that's an unicorn
  end
end
```
