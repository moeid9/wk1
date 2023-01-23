class TaskList
    
    def initialize
        @tasks_list = []
    end

    def add(task)
        #add tasks to list
        @tasks_list.push(task)
    end

    def print_list
        if @tasks_list.empty?
            return "there are no tasks yet".capitalize
        else
            formatted = "Here are your tasks: "
            formatted += @tasks_list.join(", ")
            return formatted
        end
    end

    def mark_complete(task)
        i = @tasks_list.index(task)
        if !@tasks_list.include?(task)
             fail "task doesnt exist" 
        else
            @tasks_list.delete_at(i)
        end
    end
end
