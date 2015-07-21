class CreateUhscores < ActiveRecord::Migration
  def change
    create_table :uhscores do |t|
			t.integer :user_id
			t.integer :hd_id
			t.float :score1
			t.float :score2
      t.timestamps
    end
  end
end
