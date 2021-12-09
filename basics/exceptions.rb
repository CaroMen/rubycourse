# ----------------------------- STANDARD ERRORS -----------------------------
# RESCUE
#  - by default, rescue only catches things that are StandardError
#  - we don't always know exactly which errors could occur, so we need to
#     explicitly use StandardError

rescue StandardError => error
  puts "StandardError: #{error.message}"
end

# it's probably best to rescue StandardError rather than Exception
#  - if we rescue Exception, we rescue every exception that inherits from
#     Exception

# RAISE
# we can use raise along with the rescue in case handling database related queries
