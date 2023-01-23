require 'tasks_list'

describe TaskList do
    context "programme intializes" do
        it "returns a message for an empty array" do
            tasks_list = TaskList.new
            result = tasks_list.print_list
            expect(result).to eq 'There are no tasks yet'
        end
    end

    context 'it adds a task to the list' do 
        it 'returns list with added task' do
            tasks_list = TaskList.new
            tasks_list.add("Wash Laundry")
            result = tasks_list.print_list
            expect(result).to eq 'Here are your tasks: Wash Laundry'
        end
    end

    context 'it prints list with multiple tasks' do 
        it 'returns list with 4 tasks' do
            tasks_list = TaskList.new
            tasks_list.add("Wash Laundry")
            tasks_list.add("Do Pair-Programming")
            tasks_list.add("Go to gym")
            tasks_list.add("Print hello world")
            result = tasks_list.print_list
            expect(result).to eq 'Here are your tasks: Wash Laundry, Do Pair-Programming, Go to gym, Print hello world'
        end
    end

    context 'It marks a task as completed' do 
        it 'returns list without completed task' do
            tasks_list = TaskList.new
            tasks_list.add("Wash Laundry")
            tasks_list.add("Do Pair-Programming")
            tasks_list.add("Go to gym")
            tasks_list.add("Print hello world")
            tasks_list.mark_complete("Do Pair-Programming")
            result = tasks_list.print_list
            expect(result).to eq 'Here are your tasks: Wash Laundry, Go to gym, Print hello world'
        end
    end
    context "it is asked to mark complete a task that doesn't exist" do 
        it 'fails' do
            tasks_list = TaskList.new
            tasks_list.add("Wash Laundry")
            expect { tasks_list.mark_complete("Do Pair-Programming") }.to raise_error "task doesnt exist" 
        end
    end
    
end