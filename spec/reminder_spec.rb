require "reminder"
describe Reminder do
    it "reminds the user to do a task" do
      reminder = Reminder.new("Kay")
      reminder.remind_me_to("Walk the dog")
      result = reminder.remind()
      expect(result).to eq "Walk the dog, Kay!"
    end

    context "when no task is set" do
      it "fails" do
        reminder = Reminder.new("Ryan")
        expect{ reminder.remind() }.to raise_error "No reminder set!"
      end
    end
    
    # We would typically have a number of these examples.
end