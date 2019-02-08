module NutritionData
  def change_molecule(molecule)
    equation = user_input
    molecule = molecule.send(equation[:operator], equation[:number])
  end

  def user_input
    puts "Write the operator to use (+,-,*,/) followed by the number"
    input = gets.chomp.chars
    equation = {
      operator: input.shift,
      number: input.join.to_i
    }
  end
end
