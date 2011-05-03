class Category < ActiveRecord::Base
  has_ancestry
  
  validates :name, :presence => true
  
  def roots
    self.root == 0
  end
  
end
