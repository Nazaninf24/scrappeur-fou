require 'rubygems'
require 'nokogiri'
require 'open-uri'


page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html"))

def get_townhall_email(townhall_url)
	
	email_link = townhall_url.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
    puts email_link.text  
end
print get_townhall_email(page)


########################################################################################################


def get_townhall_urls
	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
	array_ville = Array.new
	ville = page.xpath('//a[contains(@class, "lientxt")]').each do |node|
		array_ville << node.text
	end

	new_array = Array.new
	url = ""
	array_ville.each do |item|
		url = "http://annuaire-des-mairies.com/95/#{item}.html"
		new_array << url.downcase.gsub(' ','-')
	end
	
	p new_array
end

print get_townhall_urls

def perform


end

print perform
