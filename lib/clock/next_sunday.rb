module Clock

  class NextSunday < Timepiece
    def initialize(datetime=DateTime.new(2013, 7, 21, 22, 22, 58))
      @datetime = datetime.to_time
    end
  end

end
