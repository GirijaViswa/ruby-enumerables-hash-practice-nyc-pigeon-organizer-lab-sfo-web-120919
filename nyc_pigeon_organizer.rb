def nyc_pigeon_organizer(data)
  name = pigeon_name (data) 
  color = pigeon_color (data[:co])
end

def pigeon_name(data)
new_arr = []
data.each do |key1,value1|
  value1.each do |key2,value2|
    value2.each {|ele| new_arr << ele}
  end
end
new_arr = new_arr.uniq
end

def pigeon_color ()
