#### Question 1

def square(x)
  x * x
end

y = square(2)
# What is the value of 'x' after this line executes?

Though we have set y to the square of x (4), x is set as
the number the user specified, in this case, x = 2.

#### Question 2
# What is the value of `age` after we call `get_older`?

def get_older(age)
  age = age + 1
end

age = 10
get_older(age)

Because of the way the method get_older works, every time it
runs, age will be reset to one more than the initial number
assigned to age. In this case, because age was set to 10 inititally,
  after running get_older, age is reset to 11.

#### Question 3
# What is the return value of `jump` when called on the last line here?

def how_high
  energy * energy
end

def jump
  height = how_high()
  height - 2
end

energy = 2
jump

So, IF calling jump actually calls how_high to evaluate from inside to get a value, then how_high will be evaluated to 4, and jump will be set to height - 2, or 2.

I think here though, jump will return -2 or an error because even though energy is set to 2, jump being called will not run the how high method in order to set its internal how_high() to 4 and then subtract two from that value, instead it will have how_high as zero or nil and will not be able to calculate, or will eval to -2 if anything.

#### Question 4
# Write a method that accepts a string and an optional multiplier (defaults to 3)
# and returns the original string multiplied that many times (using the * operator).
# Do not use an options hash or keyword arguments.

def string_repeat(string, times = nil)
  if times == nil
    string.times(3)
  else
    string.times(times)
  end
end



#### Question 5
# Write code using this method to create the string "HELLO THERE, PUNY HUMANS"

def greeting(name:, salutation: 'Hi', volume: :low)
  greeting = "#{salutation} there, #{name}"
  volume == :high ? greeting.upcase : greeting
end

greeting(name: puny humans, salutation: 'Hello', :high)


