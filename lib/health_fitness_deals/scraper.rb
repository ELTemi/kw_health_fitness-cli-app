class HealthFitnessDeals::DealsScrapper

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

  def self.scrape_details
    scrape_web_index.each do |deal|

    end
  end
end

:title => deal.search("div.cui-udc-title-with-subtitle").text,
:subtitle => deal.search("div.cui-udc-subtitle").text,").text,
:url => deal.search("a").attr("href").value
