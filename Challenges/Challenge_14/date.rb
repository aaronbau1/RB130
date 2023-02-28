require 'date'

class Meetup
  attr_reader :year, :month

  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(weekday, schedule)
    DAYS = {1=>'monday', 2=>'tuesday', 3=>'wednesday', 4=>'thursday',
          5=>'friday', 6=>'saturday', 0=>'sunday'}

    SCHED = {:first=>1, :second=>2, :third=>3, :fourth=>4, :fifth=>5}


    loop do
      temp = Date.new(year,month)
      if weekday.downcase == DAYS[temp.wkday]
        puts "Monday"
        break
      else
        temp += 1
      end
    end
  end




    Date.new(year, month)
  end

end

 meetup = Meetup.new(2013, 3).day('Monday', 'first')