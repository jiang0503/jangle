class Book
  attr_accessor :title

  def initialize(title, price)
    @title = title
    @price = price
  end

  def rename_title(title)
    puts "original title is #{@title}"
    @title = title
    puts "new title is #{@title}"
  end

  def price_increase
    puts "original price is #{@price}yen"
    @price *= 2
    puts "new price is #{@price}yen"
  end

end

class Publication

   def initialize(title, price)
    @title = title
    @price = price
    puts "title is #{@title}"
   end

end

class Comic < Publication

   def price_increase
     puts "original price is #{@price}"
     @price *= 1.5
     puts "new price is #{@price}"
   end

end

class Magazine < Publication

   def price_increase
     puts "original price is #{@price}"
     @price *= 3
     puts "new price is #{@price}"
   end

end

one_piece = Book.new("one piece", 500)
one_piece.rename_title("two_piece")
one_piece.price_increase

naruto = Comic.new("naruto", 400)
naruto.price_increase

jump = Magazine.new("jump", 400)
jump.price_increase
