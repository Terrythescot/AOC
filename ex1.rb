def fuel_for_mass(mass)
  (mass / 3) - 2
end

def recursive_fuel_for_mass(mass)
  return 0 if mass <= 5

  fuel = (mass / 3) - 2
  fuel + recursive_fuel_for_mass(fuel)
end

puts File.read('x1.data')
         .split("\n")
         .map { |i| recursive_fuel_for_mass i.to_i }
         .sum
