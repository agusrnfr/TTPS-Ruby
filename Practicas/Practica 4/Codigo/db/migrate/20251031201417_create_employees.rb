class CreateEmployees < ActiveRecord::Migration[8.1]
  def change
    create_table :employees do |t|
      t.string :name, null: false, limit: 150
      t.integer :e_number, null: false
      t.references :office, foreign_key: true

      t.timestamps
    end

    add_index :employees, :e_number, unique: true
  end
end
