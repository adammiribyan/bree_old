class Patient < ActiveRecord::Base
  has_one :teeth_chart
  has_many :comments
end