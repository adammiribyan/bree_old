class Patient < ActiveRecord::Base
  mount_uploader :profile, DocumentUploader
  
  has_one :teeth_chart
  has_many :comments

  # FIXME: Bith days initial reminder scope
  scope :birthdays, where("DAY(birth_date) = ?", Time.now.day).where("MONTH(birth_date) = ?", Time.now.month)

end