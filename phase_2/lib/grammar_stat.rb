class GrammarStats
    def initialize
        @text = []
        @total_tests = 0
        @passed_tests = 0
      # ...
    end
  
    def check(text) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
        fail "No text given." if text.empty?
        if text[0] == text[0].upcase
            if [".", "!", "?"].include?text[-1]
                @passed_tests += 1
                @total_tests += 1
                return true
            else
                @total_tests += 1
                return false
            end
        else 
            @total_tests += 1
            return false
        end
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
        num = ( (@passed_tests.to_f)/@total_tests)

        return (num * 100).round(0)
    end
  end


