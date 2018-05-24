class HealthFitnessDeals::CLI
  def call
    start
  end

  def start
    puts "Welcome to the Deals app for Health and Fitness in the KW area"
    puts "Here are available deals currently trending"
    list
  end

  def list
    puts <<-DOC.gsub /^\s*/, ""
      1. Vincent Optical - 90% off Eyewear
      2. Stronger Forever - 73% off Group Training Classes
      3. Free 60-Days from Daily Burn - Daily Burn
    DOC
  end

  def method_name

  end

end
