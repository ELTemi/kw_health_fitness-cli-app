class HealthFitnessDeals::Deal
  attr_accessor :title, :sub_title, :deal_url, :description, :location, :original_price, :discount_price

  @@deals = []

  def initialize(deal_attributes)
    deal_attributes.each do |key, value|
      self.send(("#{key}="), value)
    end
    @@deals << self
  end

  def self.create_list_of_deals(deals_array)
    deals_array.map {|deal| self.new(deal_attributes)}
  end

  def add_deal_attributes(deal_hash)
    deal_hash.each {|key, value| self.send(("#{key}="), value)}
  end

  def self.all #return all deal instances
    @@deals
    #deal_1 = self.new
    #deal_1.title = "Vincent Optical"
    #deal_1.sub_title = "90% off Eyewear"
    #deal_1.url = "https://www.livingsocial.com/deals/vincent-optical"

    #deal_2 = self.new
    #deal_2.title = "Stronger Forever"
    #deal_2.sub_title = "73% off Group Training Classes"
    #deal_2.url = "https://www.livingsocial.com/deals/stronger-forever-1-1"

    #[deal_1, deal_2]
  end
end
