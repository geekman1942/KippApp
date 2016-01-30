class LoadEvent < ActiveRecord::Migration
  def up
  	tour = Event.new(:time => "2020-06-15 08:30:00", :name => "Tour", :place => "Mars", :description => "explore mars")
  	tour.save(:validate => false)
  	meeting = Event.new(:name => "Meeting", :place => "Everest", :description => "Our summit meeting", :time => "2020-07-15 20:45:00")
  	meeting.save(:validate => false)
  	party = Event.new(:name => "Party", :place => "moon", :description => "explore mars", :time => "2020-06-16 12:00:00")
  	party.save(:validate => false)
  end
  def down
  	Event.delete_all
  end
end
