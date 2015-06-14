class CreateTypeTag < ActiveRecord::Migration
  def up
    create_table :type_tags do |t|
      t.string :name, :default => '', :null => false
      t.timestamps
    end
  end
  def down
    drop_table :type_tags
  end
end
