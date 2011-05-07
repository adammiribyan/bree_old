class Doctor < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  
  def full_name
    "#{self.last_name} #{self.first_name} #{self.middle_name}"
  end
end
