class HealthFitnessDeals::DealsScrapper
  attr_accessor :deal_url

  def self.scrape_web_index
    @doc = Nokogiri::HTML(open("https://www.livingsocial.com/browse/kitchener-waterloo?category=health-and-fitness"))
    list_doc = @doc.search("div#pull-cards a")
    all_deals = []
    list_doc.each do |deal|
      title = deal.css("div.cui-udc-title-with-subtitle").text.strip
      sub_title = deal.css("div.cui-udc-subtitle").text.strip
      deal_url = deal.attr("href")
      all_deals << {title: title, sub_title: sub_title, deal_url: deal_url}
      end
      all_deals
  end
end

=begin
def self.scrape_details(deal_url)
  doc = Nokogiri::HTML(open(deal_url))
  details = doc.search("div.module-body")
  scraped_deal = {}
  details.each do |deal|
    scraped_deal[:title] = deal.search("h1#deal-title").text.strip
    scraped_deal[:original_price] = deal.search("div.value-source-wrapper div.breakout-option-value").text.strip
    scraped_deal[:discount_price] = deal.search("div.price-discount-wrapper div.breakout-option-price").text.strip
    scraped_deal[:description] = deal.search("section p").text.strip
  end
  scraped_deal
end
def add_deal_attributes(deal_hash)
  deal_hash.each {|key, value| self.send(("#{key}="), value)}
end

=end
