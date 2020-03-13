class Student < ApplicationRecord
  belongs_to :course, optional: true
  belongs_to :organization, optional: true
  has_one :user
  has_one :address, as: :addressable
  accepts_nested_attributes_for :address

end
