Before do
  if ENV['BROWSER']
	   @browser = Watir::Browser.new ENV['BROWSER'].to_sym
   else
    @browser = Watir::Browser.new :firefox
  end
end

After do |scenario|
   if scenario.respond_to?('scenario_outline') then
        scenario = scenario.scenario_outline
   end
   if scenario.failed?
       filename = "error-#{@current_page.class}-#{Time.now}.png" 
       @current_page.save_screenshot(filename)
       embed(filename, 'image/png')
   end
@browser.close
end


After do
	@browser.quit
end
