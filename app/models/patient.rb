class Patient < ActiveRecord::Base
  mount_uploader :profile, DocumentUploader
  
  has_one :teeth_chart
  has_many :comments
end