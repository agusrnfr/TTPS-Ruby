class Office < ApplicationRecord
  has_many :employees, dependent: :destroy
  scope :empty, -> { where(available: true).left_outer_joins(:employees).where(employees: { id: nil }) }

  validates :name, presence: true, length: { maximum: 255 }
  validates :phone_number, presence: true, uniqueness: true, length: { maximum: 30 }, argentine_phone: true
  validates :address, length: { maximum: 1000 }, allow_blank: true
  validates :available, inclusion: { in: [true, false] } # Si no puede ser null no tiene sentido un valor por defecto

  def to_s
    "Office: #{name}, Phone: #{phone_number}, Available: #{available}, Address: #{address}"
  end
end
