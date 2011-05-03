class Category < ActiveRecord::Base
  has_ancestry
  
  validates :name, :presence => true
  
  def roots
    self.is_root? == true
  end
  
end
