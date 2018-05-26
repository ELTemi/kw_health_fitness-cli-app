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
    deals_array = HealthFitnessDeals::DealsScrapper.scrape_web_index
    deal_objects = HealthFitnessDeals::Deal.create_list_of_deals(deals_array)
    deal_objects.each.with_index(1) do |deal, i|
      puts "#{i}. #{deal.title} - #{deal.sub_title} - #{deal.deal_url}"
    end
  end

  def print_chosen_deal(chosen_deal)
    puts ""
    puts "-------- #{chosen_deal.title} - #{chosen_deal.sub_title} --------"
    puts ""
    puts "  Original Price: #{chosen_deal.original_price}"
    puts "  Discount Price: #{chosen_deal.discount_price}"
    puts "  Description: #{chosen_deal.description}"
  end


  def details_menu
    puts "Please enter the number of the deal you want more details on:"
    input = ""
    while input != "exit"
      input = gets.strip.downcase

      if input.to_i > 0
        chosen_deal =  HealthFitnessDeals::Deal.all.find(input.to_i)
        print_chosen_deal(chosen_deal)
      elsif input == "list"
        list_available_deals
      else
        puts "You have made an invalid entry. Please try again"
      end
    end
  end



  def exit
    puts "Thank you for stopping by. Please visit us sometime for moe deals"
    details_menu
  end
end
