class CreateOffices < ActiveRecord::Migration[8.1]
  def change
    create_table :offices do |t|
      t.string :name, null: false, limit: 255
      t.string :phone_number, null: false, limit: 30
      t.text :address
      t.boolean :available, null: false, default: true

      t.timestamps
    end

    add_index :offices, :phone_number, unique: true
  end
end
