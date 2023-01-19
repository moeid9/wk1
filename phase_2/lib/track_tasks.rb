#As a user
#So that I can keep track of my tasks
#I want to check if a text includes the string #TODO.

def track(tasks)
    fail "No task given." if tasks.empty?
    check = tasks.split(" ")
    check.include? "#TODO" 
end

#1. def track("") --#fail
#2. def track("#todo make dinner") -- #return false
#3. def track("#Todo make dinner") -- #return false
#4. def track("#TODO do laundry") --#return true
#5. def track("do laundry #TODO") --#return true
#6. def track("$TODO go shopping") --#return false
#7. def track("#TODO") --#return true
