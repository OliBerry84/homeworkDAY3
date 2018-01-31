stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
# Add "Edinburgh Waverley" to the end of the array
stops.push("Edinburgh Waverley")
p stops
# Add "Glasgow Queen St" to the start of the array
stops.unshift("Glasgow Queen St")
p stops
# Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")
stops.insert(4, "Polmont")
p stops
# Work out the index position of "Linlithgow"
p stops[5]
# Remove "Livingston" from the array using its name
stops.delete("Livingston")
p stops
# Delete "Cumbernauld" from the array by index
stops.delete_at(2)
p stops
# How many stops there are in the array?
p stops.count
# How many ways can we return "Falkirk High" from the array?
p stops[2]
p stops[-5]
# Reverse the positions of the stops in the array
stops.reverse!
p stops
# Print out all the stops using a for loop
for all_stops in stops
end
p stops
#================================================================================
users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}
# Get Jonathan's Twitter handle (i.e. the string "jonnyt")
p users ["Jonathan"][:twitter]
# Get Erik's hometown
p users ["Erik"][:home_town]
# Get the array of Erik's lottery numbers
p users ["Erik"][:lottery_numbers]
# Get the type of Avril's pet Monty
p users ["Avril"][:pets]
# Get the smallest of Erik's lottery numbers
p users ["Erik"][:lottery_numbers].min
# Return an array of Avril's lottery numbers that are even
p users ["Avril"][:lottery_numbers].select{ |x| x.even? }
# Erik is one lottery number short! Add the number 7 to be included in his lottery numbers
p users ["Erik"][:lottery_numbers].push(7)
# Change Erik's hometown to Edinburgh
p users ["Erik"][:home_town] = "Edinburgh"
# Add a pet dog to Erik called "Fluffy"
fluffy = {
  name: "Fluffy",
  species: "Dog"
}

p users["Erik"][:pets].push(fluffy)

# Add another person to the users hash
users["Oli"] = {
  :twitter => "oliberry",
  :lottery_numbers => [3, 5, 21, 24, 27, 35],
  :home_town => "Castlecove",
  :pets => [
    {
      :name => "Skye",
      :species => "Dog"
    }
  ]
  }

#================================================================================
united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]
# Change the capital of Wales from "Swansea" to "Cardiff".
p united_kingdom [1][:capital] = "Cardiff"
# Create a Hash for Northern Ireland and add it to the united_kingdom array (The capital is Belfast, and the population is 1,811,000).
northern_ireland = {
  name: "Northern Ireland",
  population: 1811000,
  capital: "Belfast"
}

united_kingdom.push(northern_ireland)

# Use a loop to print the names of all the countries in the UK.
for countries in united_kingdom
  p "#{countries[:name]}"
end
# Use a loop to find the total population of the UK.
def total_population(array)
  total_population = 0

  for population in array
    total_population += population[:population]
  end

  return "#{ total_population } is the total population of the United Kingdom"
end

p total_population(united_kingdom)
