FactoryBot.define do
  factory :event do
    name { "Cool Party" }
    starts_at { 1.day.from_now.beginning_of_day }
    ends_at { 1.week.from_now.beginning_of_day }
  end
end
