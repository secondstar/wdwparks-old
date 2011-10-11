class Land < ActiveRecord::Base
  belongs_to :park
  has_many :attractions
end
