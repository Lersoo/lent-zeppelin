class Zeppelin < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  def self.search(search)
    if search
      Zeppelin.where('lower(location) LIKE ?', search[:location].downcase)
    else
      Zeppelin.all
    end
  end
end
