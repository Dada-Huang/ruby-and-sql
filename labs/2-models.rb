# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
puts "salespeople: #{Salesperson.all.count}"

salesperson = Salesperson.new
salesperson["first_name"] = "Brian"
salesperson["last_name"] = "Block"
salesperson["email"] = "Brian.com"
salesperson.save

salesperson = Salesperson.new
salesperson["first_name"] = "first_2"
salesperson["last_name"] = "last_2"
salesperson["email"] = "2.com"
salesperson.save

salesperson.save

# 3. write code to display how many salespeople rows are in the database

# ---------------------------------
# Salespeople: 2
puts "salespeople: #{Salesperson.all.count}"

# 4. modify/update column data for a row in the salespeople table.
ben = Salesperson.find_by({"first_name" => "Ben", "last_name" => "Block"})
puts ben.inspect
ben["email"] = "benjamin.block@kellogg.northwestern.edu"
ben.save
puts ben.inspect

# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng

all_salespeople = Salesperson.all
for person in all_salespeople
   # puts person.inspect
   first_name = person["first_name"]
   last_name = person["last_name"]
   email = person["email"]
   puts "#{first_name} #{last_name} --- #{email}"
end

#puts all_salespeople.inspect
