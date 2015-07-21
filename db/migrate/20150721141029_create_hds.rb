class CreateHds < ActiveRecord::Migration
  def change
    create_table :hds do |t|
			t.string :hdname
			t.integer :branch_id
			t.integer :city_id
			t.integer :n	
      t.timestamps
    end
  end
end
