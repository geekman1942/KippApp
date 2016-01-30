class ContactController < ApplicationController

	def index
		@category_list = ContactCategory.all
	end

end
