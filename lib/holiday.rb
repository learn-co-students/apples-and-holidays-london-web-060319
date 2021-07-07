



  require 'pry'

  def second_supply_for_fourth_of_july(holiday_hash)
    # return the second element in the 4th of July array
    holiday_hash[:summer][:fourth_of_july][1]
  end
  
  def add_supply_to_winter_holidays(holiday_hash, supply)
  
   # add the second argument, which is a supply, to BOTH the
    # Christmas AND the New Year's arrays
  
    holiday_hash.each do |season, occasion|
      if season == :winter
        occasion.each do |symbol, array|
          array << supply
        end
      end
    end
    return holiday_hash
  end
  
  def add_supply_to_memorial_day(holiday_hash, supply)
  
  # again, holiday_hash is the same as the ones above
    # add the second argument to the memorial day array
  
    holiday_hash.each do |season, occasion|
      if season == :spring
        occasion.each do |symbol, array|
          array << supply
        end
      end
    end
    return holiday_hash
  end
  
  def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
   holiday_hash[season][holiday_name] = supply_array
   return holiday_hash 
  end
  
  def all_winter_holiday_supplies(holiday_hash)
    # return an array of all of the supplies that are used in the winter season
    holiday_hash.each do |season, occasion|
      if season == :winter
        winter_supply = []
        occasion.each do |supply_array, supply|
            winter_supply << supply
        end
        return winter_supply.flatten
      end
    end
  end
  
  def all_supplies_in_holidays(holiday_hash)
    # Should output
    # Winter:
    #   Christmas: Lights, Wreath
    #   New Years: Party Hats
    # Summer:
    #   Fourth Of July: Fireworks, BBQ
    holiday_hash.each do |season, occasion_hash|
      season_string = season.to_s        
      season_string.capitalize!
      season_string << ":"
      puts season_string 
            
      occasion_hash.each do |occasion, holiday_array|
          occasion_string = occasion.to_s
          occasion_string.gsub!("_", " ")
          occasion_array = occasion_string.split
          occasion_array.each do |item|
              item.capitalize!
          end
          occasion_string = occasion_array.join(" ")
          occasion_string << ":"
          occasion_string.prepend("  ") 
          
          holiday_string = holiday_array.join(", ")
          holiday_string.prepend (" ")
          occasion_string << holiday_string
          puts occasion_string 
      end
    end
  end
  
  def all_holidays_with_bbq(holiday_hash)
    # return an array of holiday names (as symbols) where supply lists
    # include the string "BBQ"
    holidays_with_bbq = []
    holiday_hash.each do |season, occasion_hash|
      occasion_hash.each do |occasion, occasion_array|
        if occasion_array.include?("BBQ") == true
          holidays_with_bbq << occasion
        end
      end
    end
    return holidays_with_bbq
  end
  
  # holiday_hash = 
    # {
    #   :winter => {
    #     :christmas => ["Lights", "Wreath"],
    #     :new_years => ["Party Hats"]
    #   },
    #   :summer => {
    #     :fourth_of_july => ["Fireworks", "BBQ"]
    #   },
    #   :fall => {
    #     :thanksgiving => ["Turkey"]
    #   },
    #   :spring => {
    #     :memorial_day => ["BBQ"]
    #   }
    # }