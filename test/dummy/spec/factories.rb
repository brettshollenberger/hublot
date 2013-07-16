FactoryGirl.define do
  factory :comment do
    body "Hello World!"

    trait :last_monday do
      created_at ActiveSupport::TimeWithZone.new(DateTime.new(2013, 7, 1, 20, 0, 58), Time.zone)
    end

    trait :last_tuesday do
      created_at ActiveSupport::TimeWithZone.new(DateTime.new(2013, 7, 2, 20, 0, 58), Time.zone)
    end

    trait :last_wednesday do
      created_at ActiveSupport::TimeWithZone.new(DateTime.new(2013, 7, 3, 20, 0, 58), Time.zone)
    end

    trait :last_thursday do
      created_at ActiveSupport::TimeWithZone.new(DateTime.new(2013, 7, 4, 20, 0, 58), Time.zone)
    end

    trait :last_friday do
      created_at ActiveSupport::TimeWithZone.new(DateTime.new(2013, 7, 5, 20, 0, 58), Time.zone)
    end

    trait :last_saturday do
      created_at ActiveSupport::TimeWithZone.new(DateTime.new(2013, 7, 6, 20, 0, 58), Time.zone)
    end

    trait :last_sunday do
      created_at ActiveSupport::TimeWithZone.new(DateTime.new(2013, 7, 7, 20, 0, 58), Time.zone)
    end

    trait :monday do
      created_at ActiveSupport::TimeWithZone.new(DateTime.new(2013, 7, 8, 20, 0, 58), Time.zone)
    end

    trait :tuesday do
      created_at ActiveSupport::TimeWithZone.new(DateTime.new(2013, 7, 9, 20, 0, 58), Time.zone)
    end

    trait :wednesday do
      created_at ActiveSupport::TimeWithZone.new(DateTime.new(2013, 7, 10, 20, 0, 58), Time.zone)
    end

    trait :thursday do
      created_at ActiveSupport::TimeWithZone.new(DateTime.new(2013, 7, 11, 20, 0, 58), Time.zone)
    end

    trait :friday do
      created_at ActiveSupport::TimeWithZone.new(DateTime.new(2013, 7, 12, 20, 0, 58), Time.zone)
    end

    trait :saturday do
      created_at ActiveSupport::TimeWithZone.new(DateTime.new(2013, 7, 13, 20, 0, 58), Time.zone)
    end

    trait :sunday do
      created_at ActiveSupport::TimeWithZone.new(DateTime.new(2013, 7, 14, 20, 0, 58), Time.zone)
    end

    trait :next_monday do
      created_at ActiveSupport::TimeWithZone.new(DateTime.new(2013, 7, 15, 20, 0, 58), Time.zone)
    end

    trait :next_sunday do
      created_at ActiveSupport::TimeWithZone.new(DateTime.new(2013, 7, 21, 20, 0, 58), Time.zone)
    end

    factory :last_monday_comment,    traits: [:last_monday]
    factory :last_tuesday_comment,   traits: [:last_tuesday]
    factory :last_wednesday_comment, traits: [:last_wednesday]
    factory :last_thursday_comment,  traits: [:last_thursday]
    factory :last_friday_comment,    traits: [:last_friday]
    factory :last_saturday_comment,  traits: [:last_saturday]
    factory :last_sunday_comment,    traits: [:last_sunday]
    factory :monday_comment,         traits: [:monday]
    factory :tuesday_comment,        traits: [:tuesday]
    factory :wednesday_comment,      traits: [:wednesday]
    factory :thursday_comment,       traits: [:thursday]
    factory :friday_comment,         traits: [:friday]
    factory :saturday_comment,       traits: [:saturday]
    factory :sunday_comment,         traits: [:sunday]
    factory :next_monday_comment,    traits: [:next_monday]
    factory :next_sunday_comment,    traits: [:next_sunday]
  end
end
