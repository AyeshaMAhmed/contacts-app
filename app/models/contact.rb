class Contact < ApplicationRecord

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def japan_phone_number
    "+81 #{phone_number}"
  end

  def self.find_all_johns
    contact.where(first_name: "John")
  end

  


  # def ingredients_list
  #   return ingredients.split(", ")
  # end

  # def directions_list
  #   return directions.split(",")
  # end

  # def friendly_created_at
  #   created_at.strftime("%b %e, %l:%M %p")
  # end

  # def friendly_prep_time
  #   hours = prep_time/60
  #   minutes = prep_time % 60
  #   result = ""
  #   result += "#{hours} hour" if hours > 0
  #   result += " #{minutes} minutes" if minutes > 0
  # end

end
