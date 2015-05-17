class Mutant < ActiveRecord::Base
  belongs_to :team
  validates :name, presence: true, uniqueness: true, length: { maximum: 255 }
  validates :team, presence: true
end
