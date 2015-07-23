class CreateBreads < ActiveRecord::Migration
  def change
    create_table :breads do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
