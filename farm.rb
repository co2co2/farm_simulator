
class Field
  @@all_fields = []
  @@sum_harvest = 0
  attr_accessor :type, :size

  def initialize(type, size)
    @type = type
    @size = size
  end

  def self.add_field(type, size)
    new_field = Field.new(type, size)
    @@all_fields << new_field
  end

  def self.harvest
    harvest = 0
    @@all_fields.each do |f|
			if f.type == "corn"
				harvest = 20 * f.size
      else
        harvest = 30 * f.size
			end
      @@sum_harvest += harvest
    puts "harvesting #{harvest} food from #{f.type} hectare #{f.size} field. "
    end
    return @@sum_harvest
  end


  def self.field_info
    @@all_fields.each do |f|
      puts "#{f.type}field is #{f.size} hectares."
    end
  end

  def self.poem
    @@all_fields.each do |f|
			if f.type == "corn"
				puts "#{f.size} hectares of tall green stalks rustling in the breeze fill your horizon."
			else
				puts "The sun hangs low, casting an orange glow on a sea of #{f.size} hectares of wheat."
			end
		end
  end

end
