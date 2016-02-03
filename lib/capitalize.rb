
class String
  define_method :cap_all do
    split = self.split(" ")
    capped = ""
    split.each do |word|
      word.capitalize!
      capped += word
    end
    return capped
  end
  define_method :down_all do
    plit = self.split(" ")
    down = ""
    split.each do |word|
      word.downcase!
      down += word
    end
    return down
  end
end
