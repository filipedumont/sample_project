class GoogleHomePage
	include PageObject


	page_url 'http://www.google.com'

	text_field(:search_field, :id => 'lst-ib')
	
	button(:search_btn, :class => 'lsb')



	def do_search term
		self.search_field = term
		self.search_btn
	end
end