class RssController < ApplicationController
    require 'nokogiri'
    require 'open-uri'
    def grab_feed
        doc = Nokogiri::XML(open(request.headers['feed']))
        render xml: doc
    end
end
