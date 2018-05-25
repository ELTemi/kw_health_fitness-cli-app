class HumanFitnessDeals::DealsScrapper

  def self.scrape_web_index
    doc = Nokogiri::HTML(open("https://www.livingsocial.com/browse/kitchener-waterloo?category=health-and-fitness"))
    binding.pry
    deals
  end


end
