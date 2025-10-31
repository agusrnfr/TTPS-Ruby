class Employee < ApplicationRecord
  belongs_to :office
  scope :vacant, -> { where(office_id: nil) }
  scope :occupied, -> { where.not(office_id: nil) }

  def to_s
    "Employee: #{name}, E-Number: #{e_number}, Office: #{office.name}"
  end
end
