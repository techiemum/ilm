class Student < ApplicationRecord
  belongs_to :course
  belongs_to :organization
  has_one :user
end
