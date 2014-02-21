
numberSearch = (string) ->
  digits = []
  sumValues = []
  total = 0
  letters = 0
  for char, i in string
    if (string.charCodeAt i) in [48..57]
      digits.push(char)
    else
      if (char.charCodeAt 0) in [65..90] or 
      (char.charCodeAt 0) in [97..122]
        ++letters
      sumValues.push(+digits.join(""))
      digits = []

  for num in sumValues
    total += num
    
  return Math.round total/letters

longestWord = (string)->
  words = string.split " "
  lengths = words.map (word)->
    trimWord = word
   
    for letter in word
      
      if (letter.charCodeAt 0) not in [65..90] and
      (letter.charCodeAt 0) not in [97..122]        
        trimWord = trimWord.replace letter, ""
    return trimWord.length

  largest = Math.max.apply Math, lengths
  maxIndex = lengths.indexOf largest
  return words[maxIndex]

console.log numberSearch "Hello6 9World 2, Nic8e D7ay!"