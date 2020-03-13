class Instructor < ApplicationRecord
    has_many :course
    has_one :user
    has_one_attached :picture
end
