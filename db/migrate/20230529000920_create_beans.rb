class CreateBeans < ActiveRecord::Migration[7.0]
  def change
    create_table :beans do |t|
      t.references :origin, foreign_key: true
      t.string :type
      t.string :roast

      t.timestamps
    end
  end
end
