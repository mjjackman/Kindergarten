class CreateToddlers < ActiveRecord::Migration[5.1]
  def self.up
    create_table :toddlers do |t|
      t.string :name
      t.string :parent
      t.references :group
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :toddlers
  end
end
