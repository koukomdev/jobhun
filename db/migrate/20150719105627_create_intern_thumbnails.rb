class CreateInternThumbnails < ActiveRecord::Migration
  def change
    create_table :intern_thumbnails do |t|
      t.integer :intern_id, :default => '0', :null => false, :unsigned => true
      t.string  :image, :null => false, :comment => '画像'
      t.string  :description, :null => false, :limit => 128, :comment => '説明'

      t.timestamps null: false
    end
  end
end
