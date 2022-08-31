class CreateStages < ActiveRecord::Migration[7.0]
  def change
    create_table :stages do |t|
      t.string :title
      t.date :date
      t.integer :participants
      t.float :price
      t.string :place
      t.text :description

      t.timestamps
    end
  end
end
