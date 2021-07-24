class Elevator < ApplicationRecord
  #self.inheritance_column = :_type_disabled
  belongs_to :column
end
