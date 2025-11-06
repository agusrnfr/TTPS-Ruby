class Employee < ApplicationRecord
  belongs_to :office
  scope :vacant, -> { where(office_id: nil) }
  scope :occupied, -> { where.not(office_id: nil) }

  validates :name, presence: true, length: { maximum: 150 }
  validates :e_number, presence: true, uniqueness: true, numericality: { only_integer: true }
  validates :office_id, presence: true

  def to_s
    "Employee: #{name}, E-Number: #{e_number}, Office: #{office.name}"
  end
end
