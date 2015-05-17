class Task < ActiveRecord::Base
  belongs_to :team
  validates :team, presence: true
  validates :name, presence: true, uniqueness: true, length: { maximum: 255 }
  validates :description, presence: true

  scope :desc, -> { order("created_at DESC") }
end
