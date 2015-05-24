class Team < ActiveRecord::Base
  has_many :mutants
  has_many :tasks
  validates :name, presence: true, uniqueness: true, length: { maximum: 255 }
end
