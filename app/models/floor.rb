class Floor < ActiveRecord::Base
  attr_accessible :floor_number
  
  validates :floor_number, presence: true
  validates :floor_number, uniqueness: true
  
  has_many(
          :sections,
          class_name: "Section",
          primary_key: :id,
          foreign_key: :floor_id
          )
end