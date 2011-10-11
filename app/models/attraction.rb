class Attraction < ActiveRecord::Base
  belongs_to :land
  belongs_to :park
end
