module Clock

  class Sunday < Timepiece
    def initialize(datetime=DateTime.new(2013, 7, 14, 22, 22, 58))
      @datetime = datetime.to_time
    end
  end

end
