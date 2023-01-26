# # 1

# def ascii_value(string)
#   arr = string.chars
#   sum = 0
  
#   arr.each {|char| sum += char.ord}

#   sum
# end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0

# 2

# def time_of_day (input_minutes)
  
#   hourly_min = 60
#   daily_min = 24 * hourly_min
#   normal_minutes = input_minutes % daily_min
#   hours = (normal_minutes / 60).to_s
#   minutes = (normal_minutes % 60).to_s
  
#   hours = '0' * (2-hours.length) + hours
#   minutes = '0' * (2-minutes.length) + minutes

#   hours + ":" + minutes

# end

# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"

# 3

# def after_midnight(time)
#   hours = time[0,2].to_i
#   minutes = time[3,2].to_i
#   (hours % 24) * 60 + minutes
# end

# def before_midnight(time)
#   (1440-after_midnight(time))%1440
# end

# p after_midnight('00:00') == 0
# p before_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p before_midnight('12:34') == 686
# p after_midnight('24:00') == 0
# p before_midnight('24:00') == 0

# 4

