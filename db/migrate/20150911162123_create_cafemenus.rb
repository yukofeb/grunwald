class CreateCafemenus < ActiveRecord::Migration
  def change
    create_table :cafemenus do |t|
      t.string :name
      t.string :file

      t.timestamps null: false
    end
  end
end
