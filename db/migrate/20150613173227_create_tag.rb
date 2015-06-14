# encoding: utf-8
class CreateTag < ActiveRecord::Migration
  def up
    create_table :tags do |t|
      t.string :name, :default => '', :null => false
      t.timestamps
    end
  end
  def down
    drop_table :tags
  end
end
