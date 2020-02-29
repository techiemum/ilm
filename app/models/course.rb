class Course < ApplicationRecord
    has_many :student
    has_one :instructor
end

