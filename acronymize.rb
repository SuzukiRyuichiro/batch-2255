def acronymize(phrase)
  # split the phrase into words => array of strings
  words = phrase.split
  acro = []
  # take the first letters of each word
  # upcase the first letter
  words.each { |w| acro << w.chars.first.upcase }
  # join them together, then return that
  acro.join
end

def acronymize_with_map(phrase)
  # split the phrase into words => array of strings
  words = phrase.split
  upcased_first_chars = words.map { |w| w.chars.first.upcase }
  upcased_first_chars.join
end

acronymize_with_map('central intelligence agency')

# puts acronymize('central intelligence agency') == 'CIA'
# puts acronymize('you only live once') == 'YOLO'
# puts acronymize("don't repeat yourself") == 'DRY'
# puts acronymize('On my Way') == 'OMW'
# puts acronymize('') == ''
