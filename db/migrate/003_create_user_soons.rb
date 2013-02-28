class CreateUserSoons < ActiveRecord::Migration
  def change
    create_table :user_soons do |t|
    	t.string :name,:null => false
    	t.string :email,:null => false
        t.timestamps
    end
  end
end
