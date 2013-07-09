module Clock

  class Wednesday < Timepiece
    def initialize(datetime=DateTime.new(2013, 7, 10, 22, 22, 58))
      @datetime = datetime.to_time
    end
  end

end
