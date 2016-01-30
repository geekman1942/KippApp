class LoadFakeContacts < ActiveRecord::Migration
  def up
  	board = ContactCategory.new(:name =>"Board Members")
  	board.save(:validate => false)
  	school = ContactCategory.new(:name =>"School Leaders")
  	school.save(:validate => false)
  	finance = ContactCategory.new(:name =>"Finance Members")
  	finance.save(:validate => false)

  	steve = Contact.new(:name => "Steve Joe", :email =>"stevejoe@email.com", :phone_number =>"666.777.8888")
  	steve.contact_category = board
  	steve.save(:validate => false)
	bob = Contact.new(:name => "Bob Joe", :email =>"bobjoe@email.com", :phone_number =>"656.777.8888")
	bob.contact_category = board
	bob.save(:validate => false)
	billy = Contact.new(:name => "Billy Joe", :email =>"Billyjoe@email.com", :phone_number =>"665.777.8888")
	billy.contact_category = school
	billy.save(:validate => false)
	grace = Contact.new(:name => "Grace Voorhis", :email =>"stevejoe@email.com", :phone_number =>"666.777.8888")
	grace.contact_category = school
	grace.save(:validate => false)
	me = Contact.new(:name => "Robby Voorhis", :email =>"stevejoe@email.com", :phone_number =>"666.777.8888")
	me.contact_category = finance
	me.save(:validate => false)
	chair = Contact.new(:name => "Chair", :email =>"stevejoe@email.com", :phone_number =>"666.777.8888")
	chair.contact_category = finance
	chair.save(:validate => false)
  end
  def down
  	Contact.delete_all
  	ContactCategory.delete_all
  end
end
