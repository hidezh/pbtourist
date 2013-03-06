class CreateComesoonShares < ActiveRecord::Migration
  def change
    create_table :comesoon_shares do |t|
    	t.string :name,:null => false
    	t.integer :times,:default => 0
     	t.timestamps
    end
  end
end
