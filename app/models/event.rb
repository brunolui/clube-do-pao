class Event < ActiveRecord::Base
    validates :date,  :presence => true
   
    belongs_to :member
end
