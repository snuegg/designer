class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
			t.integer :hd_id
			t.integer :hd_city_id
			t.float :score1
			t.float :score2
      t.timestamps
    end
  end
end
