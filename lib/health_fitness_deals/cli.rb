class HealthFitnessDeals::CLI
  def call
    start
  end

  def start
    puts "Welcome to the Deals app for Health and Fitness in the KW area"
    puts "Here are available deals currently trending. if you would like to exit the app, type 'exit'."
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
    puts "#{chosen_deal.main_title}                  "
    puts ""

    if chosen_deal.products.length > 0
      chosen_deal.products.each.with_index(1) {|product, i| puts "Product #{i}: #{product}"}
    end

    if chosen_deal.original_price.length > 0
      chosen_deal.original_price.each.with_index(1) {|price, i| puts "Original Price for Product #{i}: #{price}"}
    end

    if chosen_deal.discount_price.length > 0
      chosen_deal.discount_price.each.with_index(1) {|price, i| puts "Discount Price for Product #{i}: #{price}"}
    end

    puts "Location: #{chosen_deal.location}"
    puts "Description: #{chosen_deal.description}"
  end


  def details_menu
    puts "Please enter the number of the deal you want more details on:"
      input = gets.strip.downcase

    if input.to_i > 0 && input.to_i <= HealthFitnessDeals::Deal.all.length
      chosen_deal =  HealthFitnessDeals::Deal.find(input.to_i)
      print_chosen_deal(chosen_deal)

      puts "Would you like to select another deal? Enter Y or N"
      input = gets.strip.downcase
      if input == "y"
        start
      elsif input == "n"
        puts "Thank you for visiting us! Have a fabulous day!"
      else
        invalid_entry
        details_menu
      end

    elsif input == "list"
      list_available_deals
      details_menu
    elsif input == "exit"
      goodbye
    else
      invalid_entry
      details_menu
    end
  end

  def goodbye
    puts "Thank you for stopping by. Please visit us again sometime for moe deals"
  end

  def invalid_entry
    puts "You have made an invalid entry. Please try again"
  end
end
