class Clock
  attr_reader :hour, :minute
  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def self.at(hour, minute=0)
    Clock.new(hour, minute)
  end

  def to_s
    "#{sprintf("%0.2d", hour)}:#{sprintf("%0.2d", minute)}"
  end

  def +(time)
    temp_hours = time / 60
    temp_min = time % 60
    p temp_hours
    p temp_min
    while hour + temp_hours > 24
      temp_hours -= 24
    end

    if hour + temp_hours == 24
      Clock.new(0,temp_min+minute)
    else
      Clock.new(hour+temp_hours,minute+temp_min)
    end
  end

  def -(time)
    temp_hours = time / 60
    temp_min = time % 60
    while hour - temp_hours < 0
      temp_hours -= 24
    end

    if hour + temp_hours == 0
      Clock.new(23,60-temp_min)
    elsif minute - temp_min < 0
      Clock.new(hour-temp_hours-1,60-minute-temp_min)
    else
      Clock.new(hour-temp_hours,minute-temp_min)
    end
  end

  def ==(other)
    hour == other.hour && minute == other.minute
  end
end
