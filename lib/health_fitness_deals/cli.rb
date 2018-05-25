class HealthFitnessDeals::CLI
  def call
    start
  end

  def start
    puts "Welcome to the Deals app for Health and Fitness in the KW area"
    puts "Here are available deals currently trending"
    list_available_deals
    details_menu
  end

  def list_available_deals
    puts <<-DOC.gsub /^\s*/, ""
      1. Vincent Optical - 90% off Eyewear
      2. Stronger Forever - 73% off Group Training Classes
      3. Free 60-Days from Daily Burn - Daily Burn
    DOC
  end

  def details_menu
    puts "Please enter the number of the deal you want more details on:"
    input = ""
    while input != "exit"
      input = gets.strip.to_i
      case input
      when 1
        puts <<-DOC.gsub /^\s*/, ""
          Title: C$19.50 for C$200 Worth of Prescription Sunglasses or Glasses
          Merchant name: Vincent Optical
          Merchant Location: Kitchener
          Rating Value: 91
          Number of ratings: 353
          Description: Registered opticians help customers select a flattering look from their stock of designer frames ($80–$299), lenses ($89+), and sunglasses ($189+).
        DOC
      when 2
        puts <<-DOC.gsub /^\s*/, ""
          Title: C$19.50 for C$200 Worth of Prescription Sunglasses or Glasses
          Merchant name: Vincent Optical
          Merchant Location: Kitchener
          Rating Value: 91
          Number of ratings: 353
          Description: Registered opticians help customers select a flattering look from their stock of designer frames ($80–$299), lenses ($89+), and sunglasses ($189+).
        DOC
      when "list"
        list_available_deals
      end
    end
  end



  def exit
    puts "Thank you for stopping by. Please visit us sometime for moe deals"
    details_menu
  end
end
