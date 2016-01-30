class TestPastEvents < ActiveRecord::Migration
  def change
  	test = Event.new(:name => "Test", :place => "Wherever", :description => "You goofed", :time => "2015-11-15 12:00:00")
  	test.save(:validate => false)
  end
end
