require_relative '../lib/mairie'

describe "the get_email method" do 
	it "should return the email of a given url" do
		expect(get_email("http://annuaire-des-mairies.com/95/franconville.html")).to eq("Communication@ville-franconville.fr")
	end
end