class Target < ActiveRecord::Base
  belongs_to :habit
  has_many :results
  has_many :descoverlies
end
