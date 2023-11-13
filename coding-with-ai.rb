# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.

taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

totals = taco_votes.reduce(Hash.new(0)) do |result, vote| # Creates a new hash called totals.
  # In totals, .reduce reduces the values of taco_votes to 0 as per (Hash.new(0))
  # Hash.new(0) is a newly created hash within totals with 0 as it's current value at the moment.
  # result and vote are used as block parameters. result is the hash and vote is the element in taco_votes array that is being process in the iteration.
  result[vote.downcase] += 1 # In hash result, with the elements in taco_votes lowercased, add 1 for each repitition of the element if already in the hash; if not already in hash, return the element with 1. 
  result # Return the hash that is now fully updated after iteration. 
end

p totals # print totals

# Prompt: Create a variable called totals that uses taco_votes and creates a new hash with 0 as it's default value, while iterating through and utilizing result as the parameter for hash and votes for the elements. Variable totals must return with the values of taco_votes and how many times the values shows up. 