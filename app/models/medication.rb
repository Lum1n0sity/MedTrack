class Medication < ApplicationRecord
  validates :name, presence: true
  validates :duration, presence: true
  validates :amount, presence: true
  validates :reason, presence: true
  validates :doctor, presence: true
end