# NOTE: isn't a best practice have more than 10 parameters to initialize an
#       object, instead we can create it in a piecewise way, with creational patterns.
#       
#       BUILDER PATTERN
#       "when piecewise object construction is complicated, provide an
#        API for doing it succinctly"

require "./person"
require "./person_builder"

person_builder = PersonBuilder.new

# NOTE: be able to create a complex object using comprehensive methods
# 
lucas = person_builder.
          name("Lucas").
          works.at("Fetchly").
          works.earning(25.00).
          works.earning_in("Dolars").
          works.as("Software Developer Engineer").
          lives.in_street("Guilherme Pereira 120").
          lives.in_city("Florianopolis").
          lives.in_state_of("Santa Catarina").
          lives.in_country("Brazil").
          build

puts person_builder.format_string

# Person name: Lucas
# Lives in:
#   city: Florianopolis,
#   state: Santa Catarina,
#   country: Brazil,
# Works at:
#   company: Fetchly,
#   earns: 25.0,
#   earns in: Dolars