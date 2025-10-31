class Office < ApplicationRecord
  has_many :employees, dependent: :destroy
  scope :empty, -> { where(available: true).left_outer_joins(:employees).where(employees: { id: nil }) }

  def to_s
    "Office: #{name}, Phone: #{phone_number}, Available: #{available}, Address: #{address}"
  end
end
