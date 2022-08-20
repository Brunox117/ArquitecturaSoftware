# Template Method Pattern
# Date: 22-Aug-2022
# Authors:
#          A01748931 Bruno Omar Jimenez Mancilla 
#          A01748559 Roberto Castro Barrios 
# File name: table_generator.rb

class TableGenerator

  def initialize(header, data)
    @header = header
    @data = data
  end

  def generate
    generate_header_row + (@data.map {|x| generate_row(x)}).join
  end

  def generate_header_row
    (@header.map {|x| generate_header_item(x)}).join
  end

  def generate_item(item)
    item
  end

  def generate_row(row)
    (row.map {|x| generate_item(x)}).join
  end

  def generate_header_item(item)
    item
  end

end

class CSVTableGenerator < TableGenerator

  def generate_row(row)
    "#{(row.map {|x| generate_item(x)}).join(',')}\n"
  end

  def generate_header_row
    generate_row(@header)
  end

end
