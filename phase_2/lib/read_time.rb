## As a user
## So that I can manage my time
## I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

def read_time(text)
    words = text.split(" ")
    return (words.length / 200.to_f).ceil
end
