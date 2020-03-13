class Organization < ApplicationRecord
    has_many :student
    has_one :address, as: :addressable
end
