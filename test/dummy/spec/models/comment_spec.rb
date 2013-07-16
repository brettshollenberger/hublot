require 'spec_helper'

describe Comment do
  let(:comment) { FactoryGirl.create(:comment) }

  it "contains a body" do
    expect(comment.body).to eql("Hello World!")
  end

  describe "#day_of_week" do
    let(:monday_comment) { FactoryGirl.create(:monday_comment) }
    
    it "returns the day of week of creation" do
      expect(monday_comment.day_of_week).to eql("Monday")
    end
  end

  describe "weekdays for feature testing" do
    let(:last_monday_comment)    { FactoryGirl.create(:last_monday_comment) }
    let(:last_tuesday_comment)   { FactoryGirl.create(:last_tuesday_comment) }
    let(:last_wednesday_comment) { FactoryGirl.create(:last_wednesday_comment) }
    let(:last_thursday_comment)  { FactoryGirl.create(:last_thursday_comment) }
    let(:last_friday_comment)    { FactoryGirl.create(:last_friday_comment) }
    let(:last_saturday_comment)  { FactoryGirl.create(:last_saturday_comment) }
    let(:last_sunday_comment)    { FactoryGirl.create(:last_sunday_comment) }
    let(:monday_comment)         { FactoryGirl.create(:monday_comment) }
    let(:tuesday_comment)        { FactoryGirl.create(:tuesday_comment) }
    let(:wednesday_comment)      { FactoryGirl.create(:wednesday_comment) }
    let(:thursday_comment)       { FactoryGirl.create(:thursday_comment) }
    let(:friday_comment)         { FactoryGirl.create(:friday_comment) }
    let(:saturday_comment)       { FactoryGirl.create(:saturday_comment) }
    let(:sunday_comment)         { FactoryGirl.create(:sunday_comment) }
    let(:next_monday_comment)    { FactoryGirl.create(:next_monday_comment) }
    let(:next_sunday_comment)    { FactoryGirl.create(:next_sunday_comment) }

    it "returns Monday" do
      expect(last_monday_comment.day_of_week).to eql("Monday")
      expect(next_monday_comment.day_of_week).to eql("Monday")
    end

    it "returns Tuesday" do
      expect(last_tuesday_comment.day_of_week).to eql("Tuesday")
      expect(tuesday_comment.day_of_week).to eql("Tuesday")
    end

    it "returns Wednesday" do
      expect(last_wednesday_comment.day_of_week).to eql("Wednesday")
      expect(wednesday_comment.day_of_week).to eql("Wednesday")
    end

    it "returns Thursday" do
      expect(last_thursday_comment.day_of_week).to eql("Thursday")
      expect(thursday_comment.day_of_week).to eql("Thursday")
    end

    it "returns Friday" do
      expect(last_friday_comment.day_of_week).to eql("Friday")
      expect(friday_comment.day_of_week).to eql("Friday")
    end

    it "returns Saturday" do
      expect(last_saturday_comment.day_of_week).to eql("Saturday")
      expect(saturday_comment.day_of_week).to eql("Saturday")
    end

    it "returns Sunday" do
      expect(last_sunday_comment.day_of_week).to eql("Sunday")
      expect(sunday_comment.day_of_week).to eql("Sunday")
      expect(next_sunday_comment.day_of_week).to eql("Sunday")
    end

  end
end
