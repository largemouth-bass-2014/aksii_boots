class CreateBoots < ActiveRecord::Migration
  def change
    create_table :boots do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
