class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    
    minutes = @seconds / 60
    hours = minutes / 60

    if @seconds >= 60
      seconds = @seconds % 60
    else
      seconds = @seconds
    end

    if minutes >= 60
      minutes = minutes % 60
    end

    if seconds == 0
      seconds = "00"
    elsif seconds <10
      seconds = "0" + seconds.to_s
    end

    if minutes == 0
      minutes = "00"
    elsif minutes <10
      minutes = "0" + minutes.to_s
    end

    if hours == 0
      hours = "00"
    elsif hours <10
      hours = "0" + hours.to_s
    end
        

    "#{hours}:#{minutes}:#{seconds}"
  end
end
