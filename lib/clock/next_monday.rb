module Clock

  class NextMonday < Timepiece
    def initialize(datetime=DateTime.new(2013, 7, 15, 22, 22, 58))
      @datetime = datetime.to_time
    end
  end

end
