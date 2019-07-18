require_relative '../lib/dark_trader'

describe "the scraper method" do 
	it "should return not nil" do
		expect(scraper).not_to be_nil
	end
end