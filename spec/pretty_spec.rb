require 'rspec'
require 'active_support/core_ext'

require_relative '../lib/hublot'
require_relative '../lib/clock/clockmanifest'
require_relative '../lib/example_objects/active_record_example'

describe Hublot do
  let(:example_object) { ExampleObjects::ActiveRecordExample.new }
  let(:monday)         { Clock::Monday.new }
  let(:tuesday)        { Clock::Tuesday.new }
  let(:wednesday)      { Clock::Wednesday.new }
  let(:sunday)         { Clock::Sunday.new }
  let(:last_monday)    { Clock::LastMonday.new }
  let(:next_monday)    { Clock::NextMonday.new }
  let(:next_sunday)    { Clock::NextSunday.new }
  
  describe "#pretty" do
  	it "returns just now when the object was just created" do
      expect(example_object.pretty).to eql("just now")
  	end

    it "returns just now when the object was just created" do
      example_object.created_at = Time.now - 1.second
      expect(example_object.pretty).to eql("a second ago")
    end

    it "returns x seconds ago when it's been less than one minute since creation" do
      example_object.created_at = Time.now - 2.seconds
      expect(example_object.pretty).to eql("2 seconds ago")
      example_object.created_at = Time.now - 59.seconds
      expect(example_object.pretty).to eql("59 seconds ago")
    end

    it "returns x minutes ago when it's been less than one hour since creation" do
      example_object.created_at = Time.now - 1.minute
      expect(example_object.pretty).to eql("a minute ago")
      example_object.created_at = Time.now - 59.minutes
      expect(example_object.pretty).to eql("59 minutes ago")
    end

    it "returns an hour ago when it's been less than two hours since creation" do
      example_object.created_at = Time.now - 1.hour
      expect(example_object.pretty).to eql("an hour ago")
      example_object.created_at = Time.now - 2.hours + 1.second
      expect(example_object.pretty).to eql("an hour ago")
    end

    it "returns Today at time when it's been more than an hour, and it's still the same day" do
      example_object.created_at = monday.datetime - 2.hours
      expect(example_object.pretty(monday.datetime)).to eql("Today at 8:00PM")
    end

    it "returns Yesterday at time when it's been more than a day" do
      example_object.created_at = monday.datetime
      expect(example_object.pretty(tuesday.datetime)).to eql("Yesterday at 10:00PM")
    end

    it "returns the day of week at time when it's been more than two days and it's the same week" do
      example_object.created_at = monday.datetime
      expect(example_object.pretty(wednesday.datetime)).to eql("Monday at 10:00PM")
      expect(example_object.pretty(sunday.datetime)).to eql("Monday at 10:00PM")
    end

    it "returns last day of week at time when it's been more than one week" do
      example_object.created_at = last_monday.datetime
      expect(example_object.pretty(monday.datetime)).to eql("Last Monday at 10:00PM")
      expect(example_object.pretty(sunday.datetime)).to eql("Last Monday at 10:00PM")
    end

    it "returns a fully qualified datetime when it's been more than two weeks" do
      example_object.created_at = last_monday.datetime
      expect(example_object.pretty(next_monday.datetime)).to eql("Monday, July 1 at 10:00PM")
      expect(example_object.pretty(next_sunday.datetime)).to eql("Monday, July 1 at 10:00PM")
    end
  end
end
