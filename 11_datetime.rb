=begin
    Date And Time in ruby
    The Time class represents dates and times in Ruby.

    Following is the simple example to get current date and time −
=end

time1 = Time.new

puts "Current Time : " + time1.inspect 


# Time.now is a synonym:
time2 = Time.now
puts "Current Time : " + time2.inspect

=begin 
Output ::

pcs200@pcs200-desktop:~/Desktop/ROR$ ruby 11_datetime.rb
Current Time : 2022-02-07 09:25:24.160784435 +0530
Current Time : 2022-02-07 09:25:24.160828016 +0530

=end

# We can use Time object to get various components of date and time. Following is the example showing the same

time3 = Time.new

puts "Current time : " + time3.inspect
puts time3.year
puts time3.month
puts time3.day
puts time3.wday
puts time3.yday
puts time3.hour
puts time3.min
puts time3.sec
puts time3.usec
puts time3.zone

=begin
Time.utc, Time.gm and Time.local Functions

These two functions can be used to format date in a standard format as follows −
=end

puts Time.local(2022,2,7)
# 2022-02-07 00:00:00 +0530

puts Time.local(2022,2,7,9,59)
# 2022-02-07 09:59:00 +0530

puts Time.utc(2022,2,7,10)
# 2022-02-07 10:00:00 UTC

puts Time.utc(2022,2,7,10,02)
# 2022-02-07 10:02:00 UTC

puts Time.gm(2022,02,07,01,02)
# 2022-02-07 01:02:00 UTC (same as UTC)

# Following is the example to get all the components in an array in the following format  [sec,min,hour,day,month,year,wday,yday,isdst,zone]

time4 = Time.new

value = time4.to_a

p value

#  [53, 53, 9, 7, 2, 2022, 1, 38, false, "IST"]

# This array could be passed to Time.utc or Time.local functions to get different format of dates as follows

time5 = Time.new

value1 = time5.to_a

puts Time.utc(*value)

# [36, 56, 9, 7, 2, 2022, 1, 38, false, "IST"] from this
# to this  2022-02-07 09:56:36 UTC

# Following is the way to get time represented internally as seconds since the (platform-dependent) epoch

time6 = Time.new
puts time6.inspect
# 2022-02-07 10:04:06 UTC

seconds = time6.to_i    # returns number of seconds since epoch
puts seconds 
# 1644208446


puts Time.at(seconds)  # convert number of seconds into Time objects
# 2022-02-07 10:04:06 +0530

time7 = Time.now.to_f
puts time7
# 1644208446.7941988


# You can use a Time object to get all the information related to Timezones and daylight savings as follows 
time8 = Time.new
puts time8.inspect
#2022-02-07 04:45:53.976573352 UTC 

# Here is the interpretation
puts time8.zone       # => "IST": return the timezone
# IST

puts time8.utc_offset # => 0: UTC is 0 seconds offset from UTC
#19800

puts time8.zone       # => "PST" (or whatever your timezone is)
#IST

puts time8.isdst      # => false: If UTC does not have DST.
#false

puts time8.utc?       # => true: if t is in UTC time zone
#false

puts time8.localtime  # Convert to local timezone.
#2022-02-07 10:08:42 +0530

puts time8.gmtime     # Convert back to UTC.
#2022-02-07 04:38:42 UTC

puts time8.getlocal   # Return a new Time object in local zone
#2022-02-07 10:08:42 +0530

puts time8.getutc     # Return a new Time object in UTC
#2022-02-07 04:38:42 UTC

=begin

Formatting Times and Dates

There are various ways to format date and time. Here is one example showing a few

=end

time9 =Time.new

puts time9.to_s
# 2022-02-07 10:19:57 +0530

puts time9.ctime
# Mon Feb  7 10:20:26 2022

puts time9.localtime
# 2022-02-07 10:21:04 +0530

puts time9.strftime("%Y-%m-%d")
# 2022-02-07

puts time9.strftime("%y-%m-%d %h:%i:%s")
# 22-02-07 Feb:%i:1644209576

puts time9.strftime("%y-%m-%d %H:%M:%S")
# 22-24-02 10:24:48
 
puts time9.strftime("%D %H:%M:%S")
# 02/07/22 10:25:08

puts time9.strftime("%y %H:%M:%S")
# 22 10:25:08

puts time9.strftime("%Y-%m-%d %H:%M:%S")
# 2022-02-07 10:29:30

puts time9.strftime("%Y-%m-%d %H:%M:%S %p %% %B %A")
# 2022-02-07 10:38:22 AM February Monday

puts time9.strftime("%x")
# 02/07/22

puts time9.strftime("%X")
# 10:46:23

=begin

%a
The abbreviated weekday name (Sun).

%A
The full weekday name (Sunday).	

%b
The abbreviated month name (Jan).	

%B
The full month name (January).	

%c
The preferred local date and time representation.	

%d
Day of the month (01 to 31)	

%H
Hour of the day, 24-hour clock (00 to 23).	

%I
Hour of the day, 12-hour clock (01 to 12).	

%j
Day of the year (001 to 366).	

%m
Month of the year (01 to 12)

%M
Minute of the hour (00 to 59)

%p
Meridian indicator (AM or PM)	

%S
Second of the minute (00 to 60).

%U
Week number of the current year, starting with the first Sunday as the first day of the first week (00 to 53).

%W
Week number of the current year, starting with the first Monday as the first day of the first week (00 to 53).
 	

%w
Day of the week (Sunday is 0, 0 to 6).	

%x
Preferred representation for the date alone, no time.	

%X
Preferred representation for the time alone, no date.

%y
Year without a century (00 to 99).	

%Y
Year with century.

%Z
Time zone name.
 	

%%
Literal % character.




Time Arithmetic

You can perform simple arithmetic with time as follows

=end

timeA = Time.now
puts timeA
#2022-02-07 10:53:44 +0530

puts past = timeA - 10
#2022-02-07 10:53:34 +0530

puts future = timeA + 10
#2022-02-07 10:53:54 +0530

puts future - past
# 20.0
