class Reminder < ApplicationRecord
  validates :medication, presence: true
  validates :time, presence: true
  validates :amount, presence: true
end