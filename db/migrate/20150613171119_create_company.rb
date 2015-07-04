class CreateCompany < ActiveRecord::Migration
  def up
    create_table :companies do |t|
      t.string :name,             :default => '', :null => false
      t.string :kana,             :default => '', :null => false
      t.integer :status,          :limit => 1, :default => '0', :null => false, :unsigned => true
      t.text :corporate_culture,  :null => false
      t.timestamps
    end
  end

  def down
    drop_table :companies
  end
end
