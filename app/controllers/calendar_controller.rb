class CalendarController < ApplicationController
	def index
		@calendar_events = Event.all.order('time')
		time = Time.now
		valid_events = []
		@past_events = []
		@calendar_events.each do |event|
			if event.time >= time
				valid_events.push(event)
			else 
				@past_events.push(event)
			end
		end
		@calendar_events = valid_events
	end
end
