class Patient < ActiveRecord::Base
  has_one :teeth_chart
end