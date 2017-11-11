require_relative'farm.rb'

class Farm
  def initialize
    puts "what do you want to do whith your farm? "
  end

    def main_menu
      while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
      end
    end

    def print_main_menu
      puts "[1]field -> adds a new field"
      puts "[2]harvest -> harvests crops and adds to total harvested"
      puts "[3]status -> displays some information about the farm"
      puts "[4]relax -> provides lovely descriptions of your fields"
      puts "[5]exit -> exits the program"
    end

    def call_option(user_selected)
      case user_selected
      when 1 then add_to_farm
      when 2 then farm_harvest
      when 3 then farm_status
      when 4 then discribe_farm
      when 5 then exit
      end
    end

    def add_to_farm
      puts "What kind of field is it: corn or wheat?"
      type = gets.chomp
      puts "How large is the field in hectares?"
      size = gets.to_i
      Field.add_field(type, size)
      puts "Added a #{type} field of #{size}!"
    end

    def farm_harvest
      puts "The farm has #{Field.harvest} harvested food so far."
    end

    def farm_status
      Field.field_info
    end

    def discribe_farm
      Field.poem
    end
end
f1 = Farm.new
f1.main_menu
