module Clock

  class LastFriday < Timepiece
    def initialize(datetime=DateTime.new(2013, 7, 5, 22, 0, 58))
      @datetime = datetime.to_time
    end
  end
  
end
