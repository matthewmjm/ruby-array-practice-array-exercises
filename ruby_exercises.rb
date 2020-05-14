# Array Practice
#--------------------------------------------------
## Practice with Integers
array = (0..100).to_a
#1. return all odd numbers
def all_odd_numbers(array)
  new_array = Array.new
  array.each do |number|
    if number % 2 == 1
      new_array << number
    else
    end
  end
  new_array
end 

#2. return all even numbers
def all_even_numbers(array)
    new_array = Array.new
    array.each do |number|
      if number % 2 == 0
        new_array << number
      else
      end
    end
    new_array
  end 

  #3. return the square of all the numbers
  def all_squares(array)
    new_array = Array.new
    array.map do |number|
    new_array << (number * number)
    end
    new_array
  end 

  #4. return the first number whose square is > 350
  def first_square_greaterthan_350(array)
    Math.sqrt(square_greaterthan_350(array).first).to_i
  end

  #5. return all the numbers whose square is > 350
  def square_greaterthan_350(array)
    first_sq = []
    all_squares(array).each do |el|
      if el > 350
      first_sq << el
      else
      end
    end
    first_sq
  end 

  #6. return all the numbers, cubed
  def all_cubes(array)
    new_array = Array.new
    array.map do |number|
    new_array << (number * number * number)
    end
    new_array
  end 

  #7. return the first number whose cube is > 500
  def cubed_greaterthan_500(array)
    first_cb = []
    all_cubes(array).each do |el|
      if el > 500
      first_cb << el
      else
      end
    end
    result = first_cb.shift
    result = Math.cbrt(result).to_i
    result
  end  

  #8 return all the numbers whose cube is < 500
  def cubed_lessthan_500(array)
    first_cb = []
    all_cubes(array).each do |el|
      if el < 500
      first_cb << el
      else
      end
    end
    first_cb
  end 


#--------------------------------------------------
## Practice with Characters
array = ('a'..'z').to_a
#1. return all the letters, capitalized
def all_caps(array)
    new_array = []
    array.each do |ele|
      new_array << ele.upcase
    end
    new_array
  end

#2. first letter with `ord > 120`
def first_greaterthan120(array)
    i = 0
    x_array = []
    x_array = all_ord(array)
    while i < x_array.length
        if x_array[i] > 120
          array[i]
          break
        else
      end
    i += 1
    end
  end 

  #3. all the letters whose capital is > 72
  def all_72(array)
    x_array = []
    array.each do |item|
      if item.upcase.ord > 72
        x_array << item.upcase
      else
      end
    end
    x_array
  end

  #4. all letters where the capital has an even ord
  def even_ord(array)
    x_array = []
    array.each do |item|
      if item.upcase.ord % 2 == 0
        x_array << item.upcase
      else
      end
    end
    x_array
  end

  #5. all letters with odd ord
  def odd_ord(array)
    x_array = []
    array.each do |item|
      if item.ord % 2 != 0
        x_array << item
      else
      end
    end
    x_array
  end

  #6. first odd - ord letter with ascii value > 80
  def odd_ord_greaterthan80(array)
    array.each do |item|
      if item.upcase.ord > 80
        if item.upcase.ord % 2 != 0
          return item
          break
        else
        end
      else
      end
    end
  end