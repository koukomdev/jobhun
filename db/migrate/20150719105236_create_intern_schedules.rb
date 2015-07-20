class CreateInternSchedules < ActiveRecord::Migration
  def change
    create_table :intern_schedules do |t|
      t.integer :intern_id, :default => '0', :null => false, :unsigned => true
      t.datetime :from,     :null => false, :default => '0000-00-00 00:00:00', :comment => '開始日（必須）'
      t.datetime :to,       :null => true, :comment => '終了日（オプション）'

      t.timestamps null: false
    end
  end
end
