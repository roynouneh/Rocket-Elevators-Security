class Column < ApplicationRecord
    #self.inheritance_column = :_type_disabled
    has_many :elevator
    belongs_to :battery
end
