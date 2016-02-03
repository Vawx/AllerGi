
class Dish < ActiveRecord::Base
  validates_uniqueness_of :name
  validates :name, presence: true
  validates :ingredients, presence: true
  has_and_belongs_to_many :restaurants
end
