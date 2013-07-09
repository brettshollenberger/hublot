module Clock

  class LastWednesday < Timepiece
    def initialize(datetime=DateTime.new(2013, 7, 3, 22, 0, 58))
      @datetime = datetime.to_time
    end
  end
  
end
