class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
			t.string :bname
			t.integer :city_id
      t.timestamps
    end
  end
end
