ActiveRecord::Base.transaction do
  team = Team.create!(name: "Teenage Mutant Ninja Turtles")
  %W{Leonardo Raphael Donatello Michelangelo}.each do |mutant_name|
    team.mutants.create!(name: mutant_name)
  end
  ["Stop Shredder", "Eat Pizza"].each do |task_name|
    team.tasks.create!(name: task_name, description: "#{task_name} NOW!")
  end
end
