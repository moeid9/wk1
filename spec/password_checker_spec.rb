require 'password_checker'

describe PasswordChecker do
    it "checks the password length and returns error if it is below 8 characters" do
        password_checker = PasswordChecker.new
        expect {password_checker.check("") }.to raise_error "Invalid password, must be 8+ characters."
    end
    it "Checks the password length asnd returns true if password length is above 8" do
        password_checker = PasswordChecker.new
        result = password_checker.check("qwertyuio")
        expect(result).to eq true
    end
end