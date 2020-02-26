class Zeppelin < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def self.search(search)
    if search
      Zeppelin.near(search[:location].downcase, 20)
    else
      Zeppelin.all
    end
  end
end
