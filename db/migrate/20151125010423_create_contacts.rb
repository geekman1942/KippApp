class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.string :name
    	t.string :phone_number
    	t.string :email
    	t.integer :contact_category_id
      t.timestamps
    end
  end
end
