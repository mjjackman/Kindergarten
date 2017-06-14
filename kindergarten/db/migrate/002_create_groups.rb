class CreateGroups < ActiveRecord::Migration[5.1]
  def self.up
    create_table :groups do |t|
      t.string :name
      t.string :teacher
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :groups
  end
end
