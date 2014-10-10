def has_a_b?(str)
  if str =~ /b/
    puts 'has a b'
  else
    puts 'no b'
  end
end

def has_a_b_with_matchdata?(str)
  if /b/.match str
    puts 'has a b'
  else
    puts 'no b'
  end
end

def parse_street(input)
  match_data = /(\d*)(.*strasse)/i.match input
  if not match_data.nil?
    if not match_data.to_a.empty?
      puts match_data.to_a.last.strip!
    end
  else
    puts "no match for #{input}"
  end
end

has_a_b? 'ballerina'
has_a_b? 'football'
has_a_b? 'karate'

has_a_b_with_matchdata? 'ballerina'
has_a_b_with_matchdata? 'football'
has_a_b_with_matchdata? 'karate'

parse_street '1030 Wien, Landstrasser Hauptstrasse'
parse_street '1210 Wien, Floridsdorfer Hauptstrasse'
parse_street '1210 Wien, Kinzerplatz'