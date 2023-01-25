class MusicList
    def initialize
        @list = []
    end

    def add(song)
        @list << song
    end

    def print_list
        if @list.empty?
            fail "No songs in list." 
        elsif @list.length == 1
            return "There is only #{@list[0]} in your list"
        else
            formatted = "Here are your Songs: "
            formatted += @list.join(", ")
            return formatted
        end
    end
end