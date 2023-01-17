def make_snippet(str)
    fail "Nothing has been entered" if str == ""
    split = str.split(" ")
    if split.length <= 5
        str
    else split.length > 5
        split[0..4].join(" ") + " ..."
    end
end