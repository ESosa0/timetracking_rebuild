class Project < ActiveRecord::Base
  has_many :entries
  validates :name, presence: true, uniqueness: true, length: {maximum: 30}
end
