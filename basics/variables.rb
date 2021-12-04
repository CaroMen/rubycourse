# ---------------------------- VARIABLES ----------------------------
=begin
  - variables is a reference/pointer to a value
=end
original_var = "Sydney"
puts original_var

new_var = original_var.upcase # doesn't change the original_var
puts new_var

second_original_var = "Melbourne"
new_second_var = second_original_var.upcase!
# generally, the ! is used to change the original variable
