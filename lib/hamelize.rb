string = File.read(Rails.root + 'app/views/users/passwords/new.html.haml')
# Remove closing tags.
string.gsub!(/\<\/.*>/, '')
string.gsub!(/\<br \/>/, '')
# string.scan(/<[^%]|\s*(\S*)>([ \S]*)/)
string.gsub!(/\<(\S+)\>([\S+ ]+)/, "%#{$1} #{$2}")
string = string.gsub(/[\S]+<(\S*)>(\S \z)/, "\%#{$1} #{$2}")
string = string.gsub(/<%(=.*) %>/, "#{$1}")
string = string.gsub(/<% end %>/, '')
string = string.gsub(/<%(.*) %>/, "-#{$1}")
string = string.gsub(/\s+<div class="(.*)">/, ".#{$1}")
puts string