class CreateSalary < ActiveRecord::Migration
  def up
    create_table :salaries do |t|
      t.string  :show_text, :default => '', :null => false
      t.integer :salary,    :default => '0', :null => false, :unsigned => true
      t.timestamps
    end
  end

  def down
    drop_table :salaries
  end
end
