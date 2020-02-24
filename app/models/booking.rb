class BookingDateValidator < ActiveModel::Validator
  def validate(record)
    unless (record.zeppelin.start_date..record.zeppelin.end_date).include?(record.booking_date)
      record.errors[:booking_date] << "Must be between #{record.zeppelin.start_date} and #{record.zeppelin.end_date}"
    end
  end
end

class Booking < ApplicationRecord
  include ActiveModel::Validations
  belongs_to :zeppelin
  belongs_to :user

  validates_with BookingDateValidator
  validates :total_price, presence: true
end
