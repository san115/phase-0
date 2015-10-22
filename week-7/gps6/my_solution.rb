# Virus Predictor

# I worked on this challenge [ with: Eran Chazan].
# We spent [1.25] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  # initialize and identify the instance variables in this class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calls the other two methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # calculates predicted deaths based on data from the state_data.rb file
  def predicted_deaths
  # predicted deaths is solely based on population density
    case @population_density
      when@population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      when @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      when @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      when @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      when
      number_of_deaths = (@population * 0.05).floor
    end

  print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # calculates speed of spread based 
  def speed_of_spread #in months
  # We are still perfecting our formula here. The speed is also affected
  # by additional factors we haven't added into this functionality.
    speed = 0.0
    case @population_density
      when @population_density >= 200
      speed += 0.5
      when @population_density >= 150
      speed += 1
      when @population_density >= 100
      speed += 1.5
      when @population_density >= 50
      speed += 2
      when
      speed += 2.5
    end

  puts " and will spread across the state in #{speed} months.\n\n"

  end


end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, data[:population_density], data[:population]) 
  state.virus_effects 
end

# Reflection
# What are the differences between the two different hash syntaxes shown in the state_data file?
# They are different ways of notating the keys and values of the hash.
# What does require_relavtive do? How is it different from require? It indicates an external fles and 
# it's path that will be needed for the code in the file to run properly. The difference is that relative
# indicates the relative path.
# What are some ways to iterate through a hash? One way is the each method.
# When refactoring virus_effects, what stood out to you about the variables, if anything? The arguments
# are not necessary, since they are instance variables and can be called to any methods in the class.
# What concept did you most solidify in this challenge? The use of private and its effect on how the methods
# of the class gets called. The methods predicted_deaths and speed_of_deaths were called from the method virus_effects
# because they have been delared as private and cannot be called from outside of the class. Then the method virus_effects, which has not been
# declared as private, can be called from outside the class and provide access to predicted_deaths and speed_of_death methods.

