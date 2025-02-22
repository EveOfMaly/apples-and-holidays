require 'pry'

  # given that holiday_hash looks like this:
  holiday_hash = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }


def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
 
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
    # holiday_hash[:season][:holiday_name] = supply_array
    # holiday_hash
    holiday_hash[season][holiday_name] = supply_array
end

#iterating through the array using each
# def all_winter_holiday_supplies(holiday_hash)
#   # return an array of all of the supplies that are used in the winter season
#     array_of_supplies = []
#     holiday_hash.each do |seasons, hash_of_holidays|
#       if seasons == :winter
#         hash_of_holidays.each do |specific_holiday, supplies|
#           array_of_supplies << supplies 
#         end
#       end
#     end
#     array_of_supplies.flatten
#   end

  #using enurables 

  def all_winter_holiday_supplies(holiday_hash)
   # return an array of all of the supplies that are used in the winter season
   holiday_hash[:winter].values.flatten 
  
   end


  


def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
    holiday_hash.each do |season, holidays|
      puts "#{season.capitalize}:"
      holidays.each do |holiday, supplies|
        final_holiday = []

        holiday.to_s.split("_").each do |word|
          final_holiday << word.capitalize
        end

        puts "  #{final_holiday.join(" ")}: #{supplies.join(", ")}"
      end
    end
  end



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_hash.each do |holidays, data_hash|
    data_hash.each do |holiday, supply|
      if supply.include?("BBQ")
        array << holiday
      end
    end
  end
  array
end







