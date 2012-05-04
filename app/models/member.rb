class Member < ActiveRecord::Base
  validates :name,  :presence => true
  validates :email, :presence => true
  
  has_many :events
  
  def to_s
    self.name
  end
  
end
