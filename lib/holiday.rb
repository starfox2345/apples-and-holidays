require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
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
  # return the second element in the 4th of July array
=begin
  holiday_hash.each do |season, holidays|
    if season == :summer
      holidays.each do |event, event_info|
        if event == :fourth_of_july
          event_info
        end
      end
    end
  end      
=end
holiday_hash[:summer][:fourth_of_july][1]
end



def add_supply_to_winter_holidays(holiday_hash, supply)
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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  
#    holiday_hash.collect do |data, data_value|
#      data_value.collect do |holiday, h_items|
#       
#        holiday.collect do |holiday_items|
#            holiday_items += supply
#        end
#      end
#    end

    holiday_hash[:winter][:christmas] << supply
    holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
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
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  

  holiday_hash.each do |data, data_event|
    data_event[holiday_name] = supply_array
  #  if data == season            
  #    data_event.each do |event, event_info|        
  #      event = :holiday_name                    
        
  #    end
 #   end
  end
end




def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  items = []
  holiday_hash.each do |seasons, season_events|
    if seasons == :winter
      season_events.each do |x, i|
        items << i

      end
    end
  end
  items.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
    holiday_hash.each do |season, season_events|
       puts "#{season.capitalize}:"
      season_events.each do | holiday, holiday_events|
         puts "  #{holiday.to_s.split("_").map {|item| item.capitalize}.join(" ")}: #{holiday_events.join(", ")}"
         #Because a symbol cannot be turned into an array, so we have to make it into a string first
         #After turning into a string, we can now turn the string into an array
         #Removed underscores, then capitalize the item.
         #Then after capitalizing we joined the strings.
         #We took the holiday_event array turned it into a string joined by a comma and a space
      end
    end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_symbols = []
  holiday_hash.each do |season, season_events|
    season_events.each do |name, value|
      if name == :fourth_of_july || name == :memorial_day
          holiday_symbols << name
      end
    end
  end
  holiday_symbols
#    holiday_symbols2 << if symbo == :fourth_of_july || symbo == :memorial_day
#    end
  

end







