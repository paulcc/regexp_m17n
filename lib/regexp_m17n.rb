module RegexpM17N
  def self.non_empty?(str)
    !str.nil? && str != "".encode(str.encoding)   
    # OR # !str.nil? && !str.chars.empty? 
  end
end
