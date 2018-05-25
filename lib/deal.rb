class HealthFitnessDeals::Deal

  #@@all = {} #a hash of all the attributes of one deal
  def self.all
    #@@all
    puts <<-DOC.gsub /^\s*/, ""
      1. Vincent Optical - 90% off Eyewear
      2. Stronger Forever - 73% off Group Training Classes
      3. Free 60-Days from Daily Burn - Daily Burn
    DOC
  end
end
