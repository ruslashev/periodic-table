require "net/http"
require "csv"

Site = "http://ascii.periodni.com"

def GET(url)
  puts "GET #{url}"
  out = ""
  try = 1
  while out.empty? || out.nil?
    out = Net::HTTP.get(URI(url))
    puts "try ##{try}" if try > 1
    try = try + 1
    return "error" if try > 8
  end
  out
end

elements = %w[
  h he li be b c n o f ne na mg al si p s cl ar k ca sc ti v cr mn fe co ni
  cu zn ga ge as se br kr rb sr y zr nb mo tc ru rh pd ag cd in sn sb te i
  xe cs ba hf ta w re os ir pt au hg tl pb bi po at rn fr ra rf db sg bh hs
  mt ds rg cn uut fl uup lv uus uuo la ce pr nd pm sm eu gd tb dy ho er tm
  yb lu ac th pa u np pu am cm bk cf es fm md no lr
]

elements.each do |e|
  contents = GET("#{Site}/#{e}.html")
  symbol = e.capitalize
  name = ""
  relative_atomic_mass = ""
  atomic_number = ""
  group_number = ""
  std_state = ""
  discovery = ""
  description = ""
  atomic_radius = ""
  electrical_resistivity = ""
  melting_point = ""
  boiling_point = ""
  electronic_configuration = ""

  contents.match(/<a href=".+?">English<\/A>: ([^\n]+?)$/) do |m|
    name = m[1]
  end
  contents.match(/Relative atomic mass: ([^\n]+?)$/) do |m|
    relative_atomic_mass = m[1]
  end
  contents.match(/Atomic number: ([^\n]+?)$/) do |m|
    atomic_number = m[1]
  end
  contents.match(/Group numbers: ([^\n]+?)$/) do |m|
    group_number = m[1]
  end
  contents.match(/Standard state \(20.+?\): ([^\n]+?)$/) do |m|
    std_state = m[1]
  end
  contents.match(/Discovery: ([^\n]+?)$/) do |m|
    discovery = m[1]
  end
  contents.match(/Discovery:.+?\n<\/pre>\n(.+?)\n<pre>$/) do |m|
    description = m[1]
  end
  contents.match(/Atomic radius: ([^\n]+?)$/) do |m|
    atomic_radius = m[1]
  end
  contents.match(/Electrical resistivity .+?: ([^\n]+?) m/) do |m|
    electrical_resistivity = m[1]
  end
  contents.match(/Melting point: ([^\n]+?) </) do |m|
    melting_point = m[1]
  end
  contents.match(/Boiling point: ([^\n]+?) </) do |m|
    boiling_point = m[1]
  end
  contents.match(/Electronic configuration: ([^\n]+?) </) do |m|
    electronic_configuration = m[1]
  end

  puts "Element: " + symbol
  puts "Name: " + name
  puts "Relative atomic mass: " + relative_atomic_mass
  puts "Atomic number: " + atomic_number
  puts "Group number: " + group_number
  puts "Standard state (20 deg C): " + std_state
  puts "Discovery: " + discovery
  puts "Description: " + description
  puts "Atomic radius: " + atomic_radius
  puts "Electrical resistivity: " + electrical_resistivity
  puts "Melting point: " + melting_point
  puts "Boiling point: " + boiling_point
  puts "Electronic configuration: " + electronic_configuration

  exit 0
end

