class CreateCompany < ActiveRecord::Migration
  def up
    create_table :companies do |t|
      t.string :name,             :default => '', :null => false
      t.string :kana,             :default => '', :null => false
      t.integer :status,          :limit => 1, :default => '0', :null => false, :unsigned => true
      t.text :overview,           :null => false
      t.text :corporate_culture,  :null => false
      t.integer :area_tag_id,     :limit => 1, :default => '0', :null => false, :unsigned => true
      t.integer :business_tag_id, :limit => 1, :default => '0', :null => false, :unsigned => true
      t.integer :type_tag_id,     :limit => 1, :default => '0', :null => false, :unsigned => true
      t.integer :salary_id,       :limit => 1, :default => '0', :null => false, :unsigned => true
      t.timestamps
    end
    add_index(:companies, [:area_tag_id],                   :name => 'area_tag_id_idx')
    add_index(:companies, [:business_tag_id],               :name => 'business_tag_id_idx')
    add_index(:companies, [:type_tag_id],                   :name => 'type_tag_id_idx')
    add_index(:companies, [:salary_id],                     :name => 'salary_id_idx')
    add_index(:companies, [:status, :created_at],           :name => 'status_and_created_at_idx')
    add_index(:companies, [:name, :status],                 :name => 'name_and_status_idx')
  end

  def down
    drop_table :companies
  end
end
