require 'csv'
require 'book_in_stock'

class CsvReader
  
  def initialize
    @books_in_stock = []
  end
  
  # Changed this a bit from the book since in 1.9 I think it is
  # using a new CSV library with header support.  For the time being,
  # I just hardcode the columns index and parse the price.
  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name) do |row| 
     @books_in_stock << BookInStock.new(row[1], row[2].to_f)
    end
  end
  
  def total_value_in_stock
    sum = 0.0
    @books_in_stock.each {|book| sum += book.price}
    sum
  end
  
  def number_of_each_isbn
    puts "Not implemented yet..."
  end
end