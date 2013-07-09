module Clock

  class LastSaturday < Timepiece
    def initialize(datetime=DateTime.new(2013, 7, 6, 22, 0, 58))
      @datetime = datetime.to_time
    end
  end
  
end
