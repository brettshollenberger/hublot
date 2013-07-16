require 'spec_helper'
require_relative '../../../../lib/hublot'

feature "hublot prettifies time with zone object", %q{
  As a dev,
  I want to include the gem Hublot, and call the pretty method on any of
  my Active Record objects, and have it present a human-readable datetime.
} do

  describe "#pretty" do
    let(:comment)                { FactoryGirl.create(:comment) }
    let(:monday_comment)         { FactoryGirl.create(:monday_comment) }
    let(:tuesday_comment)        { FactoryGirl.create(:tuesday_comment) }
    let(:wednesday_comment)      { FactoryGirl.create(:wednesday_comment) }
    let(:sunday_comment)         { FactoryGirl.create(:sunday_comment) }
    let(:last_monday_comment)    { FactoryGirl.create(:last_monday_comment) }
    let(:next_monday_comment)    { FactoryGirl.create(:next_monday_comment) }
    let(:next_sunday_comment)    { FactoryGirl.create(:next_sunday_comment) }
 
    it "returns just now when the object was just created" do
      expect(comment.created_at.pretty).to eql("just now")
    end

    it "returns just now when the object was just created" do
      now = Time.now
      comment.created_at = now - 1.second
      expect(comment.created_at.pretty(now)).to eql("a second ago")
    end

    it "returns x seconds ago when it's been less than one minute since creation" do
      comment.created_at = Time.now - 2.seconds
      expect(comment.created_at.pretty).to eql("2 seconds ago")
      comment.created_at = Time.now - 59.seconds
      expect(comment.created_at.pretty).to eql("59 seconds ago")
    end

    it "returns x minutes ago when it's been less than one hour since creation" do
      comment.created_at = Time.now - 1.minute
      expect(comment.created_at.pretty).to eql("a minute ago")
      comment.created_at = Time.now - 59.minutes
      expect(comment.created_at.pretty).to eql("59 minutes ago")
    end

    it "returns an hour ago when it's been less than two hours since creation" do
      comment.created_at = Time.now - 1.hour
      expect(comment.created_at.pretty).to eql("an hour ago")
      comment.created_at = Time.now - 2.hours + 1.second
      expect(comment.created_at.pretty).to eql("an hour ago")
    end

    it "returns Today at time when it's been more than an hour, and it's still the same day" do
      @distance = monday_comment.created_at + 2.hours
      expect(monday_comment.created_at.pretty(@distance)).to eql("Today at 8:00PM")
    end

    it "returns Yesterday at time when it's been more than a day" do
      @distance = tuesday_comment.created_at
      expect(monday_comment.created_at.pretty(@distance)).to eql("Yesterday at 8:00PM")
    end

    it "returns the day of week at time when it's been more than two days and it's the same week" do
      @distance = wednesday_comment.created_at
      expect(monday_comment.created_at.pretty(@distance)).to eql("Monday at 8:00PM")
      @distance = sunday_comment.created_at
      expect(monday_comment.created_at.pretty(@distance)).to eql("Monday at 8:00PM")
    end

    it "returns last day_of_week at time when it's been more than one week" do
      @distance = monday_comment.created_at
      expect(last_monday_comment.created_at.pretty(@distance)).to eql("Last Monday at 8:00PM")
      @distance = sunday_comment.created_at
      expect(last_monday_comment.created_at.pretty(@distance)).to eql("Last Monday at 8:00PM")
    end

    it "returns a fully qualified datetime when it's been more than two weeks" do
      @distance = next_monday_comment.created_at
      expect(last_monday_comment.created_at.pretty(@distance)).to eql("Monday, July  1 at 8:00PM")
      @distance = next_sunday_comment.created_at
      expect(last_monday_comment.created_at.pretty(@distance)).to eql("Monday, July  1 at 8:00PM")
    end
  end
end

