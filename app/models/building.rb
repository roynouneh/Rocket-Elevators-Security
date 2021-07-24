class Building < ApplicationRecord
    belongs_to :customer
    belongs_to :address
    has_one :buildingdetail
    has_one :battery
    has_one :employee
end
