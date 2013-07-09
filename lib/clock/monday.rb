module Clock

  class Monday < Timepiece
    def initialize(datetime=DateTime.new(2013, 7, 8, 22, 0, 58))
      @datetime = datetime.to_time
    end
  end
  
end
