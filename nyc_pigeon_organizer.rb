def nyc_pigeon_organizer(data)
  name = pigeon_name (data) 
  colors = data[:color]
  color = pigeon_color (name,colors)
  pp color
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

def pigeon_color (name,data)
  new_hash = {}
  
  name.each do |ele|
    new_arr = []
    data.each do |col,arr|
      arr.each do |pg_name|
        if pg_name == ele
          new_arr << col
        end  
      end
    end
    new_hash[ele] = new_arr
  end
  new_hash
end
