class AddVideoToInterns < ActiveRecord::Migration
  def change
    add_column :interns, :video, :string
  end
end
