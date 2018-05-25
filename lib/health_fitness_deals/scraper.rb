class HealthFitnessDeals::DealsScrapper
  attr_accessor :url


  def self.scrape_web_index
    doc = Nokogiri::HTML(open("https://www.livingsocial.com/browse/kitchener-waterloo?category=health-and-fitness"))
    list_doc = doc.search("div.cui-udc-title-with-subtitle").text
    binding.pry
    all_deals = []
    list_doc.each do |deal|
      all_deals.push({
        :title => deal.search("div.cui-udc-title-with-subtitle").text.strip,
        :subtitle => deal.search("div.cui-udc-subtitle").text.strip,
        :url => deal.search("a").attr("href").value
        })
      end
      all_deals
  end

  def self.scrape_details(url)
    doc = Nokogiri::HTML(url)
    details = doc.search("div.module-body")
    scraped_deal = {}
    details.each do |deal|
      scraped_deal[:title] = deal.search("h1#deal-title").text.strip
      scraped_deal[:orginal_price] = deal.search("div.value-source-wrapper div.breakout-option-value").text.strip
      scraped_deal[:discount_price] = deal.search("div.price-discount-wrapper div.breakout-option-price").text.strip
      scraped_deal[:description] = deal.search("section p").text.strip
  end
end
