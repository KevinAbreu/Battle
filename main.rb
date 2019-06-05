# Intro to Ruby

# create variables by just giving them a name
# no let const,or var

name = "Kevin Abreu"
score = 100

# to determine a objects datatype, use the
# .class method

name.class #String
score.class#Integer
# Arrays look just look the same as in most High level languages

names = ['a','s','d']
scores = [1,2,3]

# "Objects" in ruby are called Hashes

# old syntax
hash = {:name =>"???", score => 100}
hash['name'] #???

# new syntax
hash = {name:"???", score: 100}

# ruby has aspecial data type called symbols
# Symbols are immutable strings

:score #This is a symbol


# Typecasting in ruby
"200".to_i #convers into intefer
"200".to_f #convers into floating
"200".to_s #convers into string

# To typecast something ot Array, you need anm iterable object

('a'..'z').to_a

#To typecast something ot a hash, you need a multidimensional Array

multi_array_.to_h

# To know what's possible with any specific object, call .methods method on it
