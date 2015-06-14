class CreateAreaTag < ActiveRecord::Migration
  def up
    create_table :area_tags do |t|
      t.string :name, :default => '', :null => false
      t.timestamps
    end
  end
  def down
    drop_table :area_tags
  end
end
