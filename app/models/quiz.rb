class Quiz < ActiveRecord::Base

  validates :size, :numericality => { :greater_than => 0 }
  validates :size, presence: true

  has_many :questions

  def generate_questions(number)
    number1 = (number.to_f / 2).floor
    number2 = (number.to_f / 2).ceil

    array = []

    number1.times do
      array << Strand.first.questions.sample
    end

    number2.times do
      array << Strand.last.questions.sample
    end

    array
  end
end