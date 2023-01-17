
class Present
  def wrap(contents)
    fail "The contents has already been wrapped" if !@contents.nil?
    @contents = contents
  end

  def unwrap
    fail "No contents have been wrapped" if @contents.nil?
    @contents
  end
end