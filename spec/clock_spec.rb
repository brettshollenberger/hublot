require 'rspec'
require 'active_support/core_ext'

require_relative '../lib/clock/clockmanifest'

describe Clock do
  let(:monday)         { Clock::Monday.new }
  let(:tuesday)        { Clock::Tuesday.new }
  let(:wednesday)      { Clock::Wednesday.new }
  let(:thursday)       { Clock::Thursday.new }
  let(:friday)         { Clock::Friday.new }
  let(:saturday)       { Clock::Saturday.new }
  let(:sunday)         { Clock::Sunday.new }
  let(:last_monday)    { Clock::LastMonday.new }
  let(:last_tuesday)   { Clock::LastTuesday.new }
  let(:last_wednesday) { Clock::LastWednesday.new }
  let(:last_thursday)  { Clock::LastThursday.new }
  let(:last_friday)    { Clock::LastFriday.new }
  let(:last_saturday)  { Clock::LastSaturday.new }
  let(:last_sunday)    { Clock::LastSunday.new }
  let(:next_monday)    { Clock::NextMonday.new }
  let(:next_sunday)    { Clock::NextSunday.new }

  describe "Monday" do
    it "is Monday" do
      expect(monday.day_of_week).to eql("Monday")
    end
  end

  describe "Tuesday" do
    it "is Tuesday" do
      expect(tuesday.day_of_week).to eql("Tuesday")
    end
  end

  describe "Wednesday" do
    it "is Wednesday" do
      expect(wednesday.day_of_week).to eql("Wednesday")
    end
  end

  describe "Thursday" do
    it "is Thursday" do
      expect(thursday.day_of_week).to eql("Thursday")
    end
  end

  describe "Friday" do
    it "is Friday" do
      expect(friday.day_of_week).to eql("Friday")
    end
  end

  describe "Saturday" do
    it "is Saturday" do
      expect(saturday.day_of_week).to eql("Saturday")
    end
  end

  describe "Sunday" do
    it "is Sunday" do
      expect(sunday.day_of_week).to eql("Sunday")
    end
  end

  describe "LastMonday" do
    it "is Monday" do
      expect(last_monday.day_of_week).to eql("Monday")
    end
  end

  describe "LastTuesday" do
    it "is Tuesday" do
      expect(last_tuesday.day_of_week).to eql("Tuesday")
    end
  end

  describe "LastWednesday" do
    it "is Wednesday" do
      expect(last_wednesday.day_of_week).to eql("Wednesday")
    end
  end

  describe "LastThursday" do
    it "is Thursday" do
      expect(last_thursday.day_of_week).to eql("Thursday")
    end
  end

  describe "LastFriday" do
    it "is Friday" do
      expect(last_friday.day_of_week).to eql("Friday")
    end
  end

  describe "LastSaturday" do
    it "is Saturday" do
      expect(last_saturday.day_of_week).to eql("Saturday")
    end
  end

  describe "LastSunday" do
    it "is Sunday" do
      expect(last_sunday.day_of_week).to eql("Sunday")
    end
  end

  describe "NextMonday" do
    it "is Monday" do
      expect(next_monday.day_of_week).to eql("Monday")
    end
  end

    describe "NextSunday" do
    it "is Sunday" do
      expect(next_sunday.day_of_week).to eql("Sunday")
    end
  end
end
