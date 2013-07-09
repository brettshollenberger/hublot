module Clock

  class Friday < Timepiece
    def initialize(datetime=DateTime.new(2013, 7, 12, 22, 22, 58))
      @datetime = datetime.to_time
    end
  end

end
