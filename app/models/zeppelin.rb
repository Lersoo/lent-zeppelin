class Zeppelin < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
