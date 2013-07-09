module Clock

  class LastThursday < Timepiece
    def initialize(datetime=DateTime.new(2013, 7, 4, 22, 0, 58))
      @datetime = datetime.to_time
    end
  end
  
end
