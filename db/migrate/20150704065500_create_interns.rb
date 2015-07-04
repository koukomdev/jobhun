class CreateInterns < ActiveRecord::Migration
  def change
    create_table :interns do |t|
      t.string  :title,           :default => '', :null => false
      t.integer :status,          :limit => 1, :default => '0', :null => false, :unsigned => true
      t.text    :overview,        :null => false
      t.integer :company_id,      :default => '0', :null => false, :unsigned => true
      t.integer :area_tag_id,     :default => '0', :null => false, :unsigned => true
      t.integer :business_tag_id, :default => '0', :null => false, :unsigned => true
      t.integer :type_tag_id,     :default => '0', :null => false, :unsigned => true
      t.integer :salary_id,       :default => '0', :null => false, :unsigned => true

      t.timestamps null: false
    end
  end
end
