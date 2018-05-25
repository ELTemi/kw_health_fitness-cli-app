class HealthFitnessDeals::Deal
  attr_accessor :title, :sub_title, :url
  #@@all = {} #a hash of all the attributes of one deal
  def self.all #return all deal instances
    #@@all
    #puts <<-DOC.gsub /^\s*/, ""
    #  1. Vincent Optical - 90% off Eyewear
    #  2. Stronger Forever - 73% off Group Training Classes
    #DOC
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
end
