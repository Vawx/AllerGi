
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
end
