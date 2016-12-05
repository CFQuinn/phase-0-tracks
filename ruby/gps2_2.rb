# Method to create a list

#Create an empty array or hash.

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # parameters split by spaces 
  # set default quantity : each key has default value of 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name , optional quantity and final list
# steps:
# method should take 2 arguments (item name and quantity)
# should add new item to previous method
# output:
#new list

# Method to remove an item from the list
# input: final list , key to be removed
# steps: method should refrence the current list and key within the hash you would like to remove

# output: the hash with the specified key removed 

# Method to update the quantity of an item
# input: final list , item, quanitiy
# steps:method should refrence the current list and item, and quantity to be updated
# output: the hash with the new specified quantity for respective item

# Method to print a list and make it look pretty
# input: final list
# steps: print final list

def create_list(list_str)
final_list = {}
arr = list_str.split(" ")
 arr.each do |key|
 final_list[key] = 1
# One refers to the default quantity. 
  end 
  final_list
end

final_list = create_list("")

def add_list(final_list, new_item, quantity)
 final_list[new_item] = quantity
 final_list
end

add_list(final_list, 'lemonade', 2)
add_list(final_list, 'tomatoes', 3)
add_list(final_list, 'onions', 1)
add_list(final_list, 'ice cream', 4)

def remove_item(final_list, key)
 final_list.delete(key)
 final_list
end

remove_item(final_list,'lemonade')

def update_item(final_list, list_item, new_quantity)
 final_list[list_item] = new_quantity
 final_list
end

update_item(final_list, 'ice cream', 1)

def clean_list(final_list)
 final_list.each do |food, quantity|