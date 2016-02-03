class Array
  define_method :downcase do
    self.split( "," )
    result = ""
    self.each do |e|
      if e.class == String
        result += e.downcase
      end
    end
    return result
  end
end
