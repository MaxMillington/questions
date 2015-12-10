class Quiz < ActiveRecord::Base

  validates :size, :numericality => { :greater_than => 0 }
  validates :size, presence: true

  has_many :questions
end