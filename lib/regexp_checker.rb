print 'Text?: '
text = gets.chomp

begin
  print 'Pettern? '
  pettern = gets.chomp
  regexp = Regexp.new(pettern)
rescue RegexpError => e
  puts 'Invalid pattern: #{e.massage}'
  retry
end

matches = text.scan(regexp)
if matches.size > 0
  puts "Matched: #{matches.join(', ')}"
else
  puts 'Nothing matched.'
end
