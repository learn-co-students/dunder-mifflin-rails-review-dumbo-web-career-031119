class Employee < ApplicationRecord
  validates :alias, uniqueness: true, presence: true
  validates :title, uniqueness: true, presence: true

  belongs_to :dog

  def display_name
    "#{self.first_name} #{self.last_name}"
  end

end
