require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday,supply|
 supply<<"Balloons"
end
end 


def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_hash[:spring].each do |holiday,original_supply|
 original_supply<<supply
end
end 

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name]=supply_array
end

def all_winter_holiday_supplies(holiday_hash)
 winter_supplies=holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
holiday_hash.each do |season, holidays| 
puts "#{season.to_s.capitalize!}:" 
holidays.each do |holiday,supply| 
puts "  #{holiday.to_s.split("_").collect{|f| f.capitalize}.join(" ")}: #{supply.join(", ")}"
end 
end 
end

def all_holidays_with_bbq(holiday_hash)
holidays_with_bbq = []
holiday_hash.each do |season,holidays|
holidays.each do |holiday,supplies|
if supplies.include?("BBQ")
holidays_with_bbq<<holiday 
end 
end 
end
holidays_with_bbq
end 







