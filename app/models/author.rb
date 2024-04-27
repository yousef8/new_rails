class Author < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :dob, presence: true
  validates :phone_number, presence: true
  validates :email, format: {with: /\A[^@ \t\r\n]+@[^@ \t\r\n]+\.[^@ \t\r\n]+\z/}
end
