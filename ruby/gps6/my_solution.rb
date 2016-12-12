# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative allows for access to larger that are locally sourced on computer. Require on the other hand, allows installed gems to be used inside a file.
#
#require_relative 'state_data'

class VirusPredictor

  #Initialize and create hub for referance data for Virus Predictor class
  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Calls predicted_deaths and speed_of_spread methods
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #predicted_deaths takes population_density and population data and returns predicted amount of death in state refernced
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density > 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density <= 200 && @population_density >= 50
      number_of_deaths = (@population * (@population_density/50 * 0.1)).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # speed_of_spread takes in population density and give predicted rate of spread in state referenced
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density > 200
      speed += 0.5
    elsif @population_density <= 200 && @population_density >= 50
      speed = (@population_density/50 =+.5)
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, population| 
  VirusPredictor.new(state, population[:population_density], population[:population]).virus_effects
end
#=======================================================================
# Reflection Section
#What are the differences between the two different hash syntaxes shown in the state_data file?
  #One is a string and the other is a symbol. String changes from key to key while the symbol remains the same
#What does require_relative do? How is it different from require?
  # it basically links the external files to the file we are trying to connect it to.
#What are some ways to iterate through a hash?
  # to iterate through a hash we can use each and map
#Instant variables stood out when refactoring virus affects.
# Topics I learned today would be "private"..how to make methods private so they are not accessible outside the class and more clarification on instant variables.

