# INSTRUCTIONS
# ============
# Iterate over the forecast array
# and output each day's forecase in
# the terminal in a human readable way.
#
# For example, the output for each day could 
# look like the following:
#
# The weather for Monday will be 73 and Partly Cloudy.
# Moon phase: Waning Gibbous
#
# The weather for ...
# ...and so on for each day

forecast = [
  {
    date: 'Monday',
    temp: 73,
    desc: 'Partly cloudy',
    moon_phase: 'Waning Gibbous'
  },
  {
    date: 'Tuesday',
    temp: 69,
    desc: 'Partly sunny',
    moon_phase: 'New Moon'
  },
  {
    date: 'Wednesday',
    temp: 64,
    desc: 'Mostly sunny',
    moon_phase: 'Waxing Gibbous'
  },
  {
    date: 'Thursday',
    temp: 65,
    desc: 'Sunny',
    moon_phase: 'Full Moon'
  },
  {
    date: 'Friday',
    temp: 71,
    desc: 'Mostly cloudy',
    moon_phase: 'Waning Crescent'
  }
]

forecast.each do |entry|
  puts "The weather for #{entry[:date]} will be #{entry[:temp]} and #{entry[:desc]}."
  puts "Moon phase: #{entry[:moon_phase]}"
  puts ""
end
