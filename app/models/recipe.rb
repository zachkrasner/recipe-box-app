class Recipe < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 4 }
  validates :description, presence: true
end
