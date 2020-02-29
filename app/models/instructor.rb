class Instructor < ApplicationRecord
    has_many :course
    has_one :user
end
