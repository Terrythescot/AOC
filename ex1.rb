def fuel_for_mass(mass)
  (mass / 3) - 2
end

puts File.read('x1.data')
         .split("\n")
         .map { |i| fuel_for_mass i.to_i }
         .sum
