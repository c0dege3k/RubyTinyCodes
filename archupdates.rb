require 'open-uri'
require 'hpricot'

doc = Hpricot(open("https://archlinux.org"))
pkg_updates = (doc / "div.pkg-updates").text

puts pkg_updates