class CreateBusinessTag < ActiveRecord::Migration
  def up
    create_table :business_tags do |t|
      t.string :name, :default => '', :null => false
      t.timestamps
    end
  end
  def down
    drop_table :business_tags
  end
end
