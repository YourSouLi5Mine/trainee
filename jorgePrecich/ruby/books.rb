# Global variable
$library_name = 'Babel Tower'

class Book
  # Class variable
  @@library_schedule = 'Mon-Fri 9:00 a.m. - 6:00 p.m.'

  # Class method
  def self.schedule
    puts @@library_schedule
  end

  def self.change_schedule(schedule)
    @@library_schedule = schedule
  end

  # Instance variables
  attr_reader :book_name, :author, :pages
  attr_accessor :prize, :quantity

  def initialize(book_name, author, pages, prize)
    @book_name = book_name
    @author = author
    @pages = pages
    @prize = prize
    @quantity = 0
  end

  def buy_books(quantity)
    @quantity += quantity
  end

  def sell_books(quantity)
    @quantity -= quantity
  end

  def change_prize(prize)
    @prize = prize
  end

  def change_library_name(new_name)
    $library_name = new_name
  end

  def library_name
    puts $library_name
  end
end

first_book = Book.new('Eloquent Ruby', 'Russ Olsen', 413, 300)
first_book.buy_books(100)
second_book = Book.new('Practices of an Agile Developer', 'Venkat Subramaniam', 189, 200)
second_book.buy_books(50)
second_book.sell_books(10)

Book.change_schedule('Mon-Fri 9:00 a.m. - 7:00 p.m.')
Book.schedule

first_book.change_library_name('The Good Books')
second_book.library_name
