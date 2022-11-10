def sub_strings(str, dict)
  string = str.downcase

  list = dict.reduce(Hash.new(0)) do |ss, term|
    word = term.downcase
    if string.include?(word)
      ss[word] += string.scan(word).length
    end
    ss
  end
  list
end
a = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts sub_strings("Howdy partner, sit down! How's it going?",a) 





