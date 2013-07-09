module Clock

  class Tuesday < Timepiece
    def initialize(datetime=DateTime.new(2013, 7, 9, 22, 22, 58))
      @datetime = datetime.to_time
    end
  end

end
