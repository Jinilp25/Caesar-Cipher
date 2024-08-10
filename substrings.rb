
def substrings(string, dic)
  hash = {}
  dic.each do |words|
    string.downcase.split(" ").each do |word|
      if word.include?(words)
        if hash[words]
          hash[words] += 1
        else
          hash[words] = 1
        end
      end
    end
  end
  hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
