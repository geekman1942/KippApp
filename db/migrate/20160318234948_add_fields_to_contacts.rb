class AddFieldsToContacts < ActiveRecord::Migration
  def change
  	remove_column :contacts, :phone_number, :string
  	remove_column :contacts, :name, :string
  	remove_column :contacts, :contact_category_id, :integer
  	add_column :contacts, :first_name, :string
  	add_column :contacts, :last_name, :string
  	add_column :contacts, :title, :string
  	add_column :contacts, :company, :string
  	add_column :contacts, :address_1, :string
  	add_column :contacts, :address_2, :string
  	add_column :contacts, :city, :string
  	add_column :contacts, :state, :string
  	add_column :contacts, :zip, :string
  	add_column :contacts, :home_phone, :string
  	add_column :contacts, :office_phone, :string
  	add_column :contacts, :cell_phone, :string
  	add_column :contacts, :fax, :string
  	add_column :contacts, :assistant, :string
  	add_column :contacts, :assistant_email, :string
  end
end
