class CreateCups < ActiveRecord::Migration[7.0]
  def change
    create_table :cups do |t|
      t.references :user, foreign_key: true
      t.string :brewing_method
      t.references :bean, foreign_key: true

      t.timestamps
    end
  end
end
