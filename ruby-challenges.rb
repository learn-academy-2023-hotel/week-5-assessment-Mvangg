# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 
# def this_function(hash)
    # new_array = hash.values.flatten
    # new_array.sort
#     hash.values.flatten.sort
# end
 
# p this_function us_states # --> ["Arizona", "California", "Idaho", "Maine", "Nevada", "New Hampshire", "Oregon", "Rhode Island", "Washington"]

# Pseudo code:
# Input: A hash that has nested arrays as the key's values.
# Output: An array with all the hash's values in alphabetical order.
# Create a method (this_function) with has as it's parameter
    # Create a new variable (new_array) that will call out the hash's values utilizing .value and place them into one whole array by utilizing .flatten. .flatten removes nested arrays by calling them into one array. 
        # sort new_array's newly added values with .sort.
    # ADJUSTMENT: Instead of creating a new variable, combine all the methods into one sequence. 
        # Call on the parameter hash and pull the hash's values with .value, place the pulled values into an array with .flatten, and sort out the values with .sort.



# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# class Bike
#     attr_accessor :model, :wheels, :current_speed
#     def initialize(model)
#         @model = model
#         @wheels = 2
#         @current_speed = 0
#     end
#     def bike_info
#         "This #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
#     end
# end

# my_bike = Bike.new('Trek')
# p my_bike.bike_info # --> "This model bike has 2 wheels and is going 0 mph."

# Pseudo code:
# Input: A string (model)
# Output: A string with all the instance variables included in it.
# Create a class called Bike.
    # Utilize attr_accessor to include :model, :wheels, and :current_speed. Because :wheels, and :current_speed have default values, they will be getter methods and :model will be a setter method.
        # Initilize with model as the argument because :model does not have a value yet. 
            # Create the instance variables for model, wheels, and current speed with wheels value set at 2 and current speed value set at 0.
    # Create a method called bike_info that will return a string of a sentence calling on each of the instance variable's values with #{:model}, #{:wheels}, #{:current_speed}. 
# Create my_class which will be a new instance of class Bike and it's initilizer with .new. Input a string value for argument model.
# Print my_bike and method bike_info.

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# I don't think this was what I was supposed to do...

# class Speed < Bike
#     attr_accessor :faster, :slower
#     def initialize(model)
#         super(model)
#         @faster = 0
#         @slower = 0
#     end
#     def pedal_faster(integer)
#         self.current_speed += integer
#     end
#     def brake(integer)
#         self.current_speed -= integer
#     end
# end

# my_bike = Speed.new('Trek')
# my_bike.pedal_faster(10) 
# p my_bike.bike_info # --> "This Trek bike has 2 wheels and is going 10 mph."
# my_bike.brake(5)
# p my_bike.bike_info # --> "This Trek bike has 2 wheels and is going 5 mph."


# Pseudo code:
# Create a subclass named Speed that will inherits from Bike class.
    # Utilize attr_accessor for variables :faster and :slower.
    # Create the initlizer for parameter model.
        # Call on Super class Bike to pass the model parameter.
        # Default instance variable faster and slower to 0.
    # Create a method called pedal_faster that takes an integer as its parameter.
        # Utilize self... in the case current_speed has changed from 0 to another integer. self.current_speed will plus and/or equal to variable integer.
    # Create a method called brake that takes an integer as its parameter.
        # Utilize self... in the case current_speed has changed from 0 to another integer. self.current_speed will minus and/or equal to variable integer.

# ---------------------------------

class Bike
    attr_accessor :model, :wheels, :current_speed 
    def initialize(model)
        @model = model
        @wheels = 2
        @current_speed = 0
    end 
    def bike_info
        "This #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
    end  
    def pedal_faster(add_speed)
        @current_speed = [@current_speed + add_speed, 0].max
    end
    def brake(minus_speed)
        @current_speed = [@current_speed - minus_speed, 0].max
    end
end

my_bike = Bike.new('Trek')
p my_bike.bike_info # --> "This Trek bike has 2 wheels and is going 0 mph."
p my_bike.pedal_faster(10) # --> 10
p my_bike.pedal_faster(18) # --> 28
p my_bike.brake(5) # --> 23
p my_bike.brake(25) # --> 0
p my_bike.brake(100) # --> 0


# Pseudo code:
# Copy & pasted 2a to use for 2b as I was not sure which route to take.
# Input: An integer.
# Output: An integer.
# Continuing from 2a: Create a setter method called pedal_faster with add_speed as it's parameter.
    # Set current_speed (which default is at 0), to have an array with current_speed added to add_speed parameter, and setting the limit to 0, ensuring it never goes under that designated limit. 
# Create a setter method called brake with minus_speed as it's parameter.
    # Set current_speed (which default is at 0), to have an array with current_speed minus the minus_speed parameter, and setting the limit to 0, ensuring it never goes under that designated limit.
# Print (p) my_bike.brake or my_bike.pedal_faster to print resulting current_speed.
