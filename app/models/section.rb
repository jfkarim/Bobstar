class Section < ActiveRecord::Base
  attr_accessible :floor_id, :call_num
  
  validates :call_num, presence: true
  validates :call_num, uniqueness: true
  
  belongs_to :floor
  
end

