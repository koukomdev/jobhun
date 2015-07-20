class CreateInterns < ActiveRecord::Migration
  def change
    create_table :interns do |t|
      t.string   :title,              :default => '', :null => false, :comment => 'タイトル'
      t.integer  :status,             :limit => 1, :default => '0', :null => false, :unsigned => true, :comment => '公開/非公開'
      t.text     :required_condition, :null => false, :comment => '必須要件'
      t.string   :location,           :null => false, :comment => '実施場所'
      t.datetime :publishing_start,   :null => false, :default => '0000-00-00 00:00:00', :comment => '公開開始'
      t.datetime :publishing_end,     :null => false, :default => '0000-00-00 00:00:00', :comment => '公開終了'
      t.text     :wages,              :null => false, :comment => '報酬/交通費'
      t.string   :positions,          :null => false, :comment => '募集人数'
      t.text     :description,        :null => false, :comment => '概要'
      t.text     :ideal_candidate,    :null => false, :comment => '求める人物像（仮、いい感じのに変える予定）'
      t.integer  :company_id,         :default => '0', :null => false, :unsigned => true
      t.integer  :area_tag_id,        :default => '0', :null => false, :unsigned => true
      t.integer  :business_tag_id,    :default => '0', :null => false, :unsigned => true
      t.integer  :type_tag_id,        :default => '0', :null => false, :unsigned => true
      t.integer  :salary_id,          :default => '0', :null => false, :unsigned => true

      t.timestamps null: false
    end
  end
end
