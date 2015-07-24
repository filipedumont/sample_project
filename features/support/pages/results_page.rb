class ResultsPage
	include PageObject

	div(:results, :id => 'resultStats')


	def verify_results?
		results?
	end
end