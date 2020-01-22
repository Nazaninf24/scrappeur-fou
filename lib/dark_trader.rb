require 'rubygems'
require 'nokogiri'
require 'open-uri'


def crypto_name_array
	crypto_name_array = [] 
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")) 
    page.xpath('//*[@class="text-left col-symbol"]').each do |node|
    crypto_name_array << node.text
	end
	crypto_name_array
end

print crypto_name_array


def crypto_price_array
	crypto_price_array = []
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")) 
	page.xpath('//td[5]').each do |node|
	crypto_price_array << node.text.delete("\n")
	end
	crypto_price_array
end
print crypto_price_array



def hash_of_crypto_rate
    #result = Hash.new { |hash_of_crypto_rate, crypto_name_array | hash_of_crypto_rate[crypto_name_array] = crypto_price_array }
    key = crypto_name_array
    value = crypto_price_array
    hash_of_crypto_rate = crypto_name_array.zip(crypto_price_array).to_h
end

print hash_of_crypto_rate



 