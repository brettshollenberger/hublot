module Clock

  class Saturday < Timepiece
    def initialize(datetime=DateTime.new(2013, 7, 13, 22, 22, 58))
      @datetime = datetime.to_time
    end
  end

end
