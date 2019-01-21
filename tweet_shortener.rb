# Write your code here.
def dictionary
  shorten = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
}
end

def word_substituter(str)
  # replaces long words with their expected short form
  array=[]
    str.split(" ").collect do |word|
      if dictionary.keys.include?(word.downcase)
        return array = dictionary[word.downcase]
      else
        return word
    end
  end
  k= array.join(" ")
  return k
end

def bulk_tweet_shortener(tweet)
  tweet.map do |phrase|
    puts word_substituter(phrase)
  end
end
