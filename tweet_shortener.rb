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
    str.split(" ").collect do |short_word| #convert str to an array then iterate the array
      if dictionary.keys.include?(short_word.downcase) #if find matching words then shorten them
         short_word = dictionary[short_word.downcase]
      else
         short_word
    end
  end.join(" ") #convert the array back to string of text
end

def bulk_tweet_shortener(str)
  str.collect do |text|
    puts word_substituter(text) #call the previous method to substitute the text
  end
end
