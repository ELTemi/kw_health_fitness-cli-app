class HealthFitnessDeals::Deal
  attr_accessor :title, :sub_title, :url
    def self.all #return all deal instances

    deal_1 = self.new
    deal_1.title = "Vincent Optical"
    deal_1.sub_title = "90% off Eyewear"
    deal_1.url = "https://www.livingsocial.com/deals/vincent-optical"

    deal_2 = self.new
    deal_2.title = "Stronger Forever"
    deal_2.sub_title = "73% off Group Training Classes"
    deal_2.url = "https://www.livingsocial.com/deals/stronger-forever-1-1"

    [deal_1, deal_2]
  end

  def self.scraped_deals
    deals = []
    deals << self.scrape_web
    #go to livingsocial.com
    #extract the attributes
    #instantiate a deal
    deals
  end

  def self.scrape_web
    doc = Nokogiri::HTML(open("https://www.livingsocial.com/browse/kitchener-waterloo?category=health-and-fitness"))
    binding.pry
  end
end
