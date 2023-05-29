class CreateOrigins < ActiveRecord::Migration[7.0]
  def change
    create_table :origins do |t|
      t.string :name
      t.string :country
      t.string :region

      t.timestamps
    end
  end
end
