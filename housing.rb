#!/usr/local/bin/ruby


require 'net/http'
require 'open-uri'
require 'date'

#SF Craigslist URL
sf_craigslist_url="https://sfbay.craigslist.org/search/sfc/apa?"

#Apartment Specs
apartment_details={
    "bedrooms" => 1,
    "bathrooms" => 1,
    "min_price" => 2000,
    "max_price" => 3500,
    "pets_cat" => 1 #cats allowed
}

def buildSearchUrl(base_url, apartment_details)
    for key, value in apartment_details
        base_url = base_url + "#{key}=#{value}&"
    end
    return base_url.chomp('&')
end

print buildSearchUrl(sf_craigslist_url, apartment_details)

print "\nDone at "+ Time.now.strftime("%m/%d/%Y %H:%M")+"\n"
