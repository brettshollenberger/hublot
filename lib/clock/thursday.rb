module Clock

  class Thursday < Timepiece
    def initialize(datetime=DateTime.new(2013, 7, 11, 22, 22, 58))
      @datetime = datetime.to_time
    end
  end

end
