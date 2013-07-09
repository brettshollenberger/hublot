module Clock
  
  class Timepiece
    attr_accessor :datetime

    def initialize(datetime)
      @datetime = datetime.to_time
    end

    def day_of_week
      @datetime.strftime('%A')
    end
  end

end
