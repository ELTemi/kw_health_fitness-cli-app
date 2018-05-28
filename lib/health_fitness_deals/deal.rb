class HealthFitnessDeals::Deal
  attr_accessor :title, :sub_title, :deal_url, :main_title, :description, :location, :original_price, :discount_price

  @@deals = []

  def initialize(deals_attributes)
    deals_attributes.each do |k, v|
      self.send(("#{k}="), v)
    end
    @@deals << self
  end

  def self.create_list_of_deals(deals_array)
    deals_array.map {|deal| self.new(deal)}
  end

  def details
    @doc = Nokogiri::HTML(open(self.deal_url))
    details = @doc.search("div.module-body")
    details
  end

  def main_title
    @main_title = details.search("h1#deal-title").text.strip
  end

  def products
    @product = details.css("div.option-details h3").children.map {|product| product.text}
  end

  def original_price
    @original_price = details.search("div.value-source-wrapper div.breakout-option-value").children.map {|price| price.text.strip}
  end

  def discount_price
    @discount_price = details.search("div.price-discount-wrapper div.breakout-option-price").children.map {|price| price.text.strip}
  end

  def description
    @description = details.search("section p").text.gsub("\n", "").strip
  end

  def self.find(i)
    self.all[i -1]
  end

  def self.all #return all deal instances
    @@deals
  end
end
