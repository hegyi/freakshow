class AddUniqueIndices < ActiveRecord::Migration
  def change
    add_index :teams, :name, unique: true
    add_index :mutants, :name, unique: true
    add_index :tasks, :name, unique: true
  end
end
