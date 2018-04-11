#For the following array
# [{"name" => "john", "children" => ["a", "b","C"]}, 
# {"name" => "jane", "children" => ["x", "y"]}, 
# {"name" => "matt", "children" => ["e"]}, 
# {"name" => "raj", "children" => ["asd","ad","dd", "eee"]}, 
# {"name" => "dan", "children" => ["ee", "qw"]}]
# Give names with 2 or more children
a = [{"name" => "john", "children" => ["a", "b","C"]}, 
 {"name" => "jane", "children" => ["x", "y"]}, 
 {"name" => "matt", "children" => ["e"]}, 
 {"name" => "raj", "children" => ["asd","ad","dd", "eee"]}, 
 {"name" => "dan", "children" => ["ee", "qw"]}]
# p a.find {|x| x['children'] >= 2 }
# # p a.select { |x| x["label"] == "cat" }

b = a.map{|x| x["name"] if (x["children"].count >= 2)}
puts "#{b.compact}"