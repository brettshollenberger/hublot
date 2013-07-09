module Clock

  class LastSunday < Timepiece
    def initialize(datetime=DateTime.new(2013, 7, 7, 22, 0, 58))
      @datetime = datetime.to_time
    end
  end
  
end
