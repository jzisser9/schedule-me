module ScheduleMe
  class Base < Grape::API
    mount ScheduleMe::V1::Events
  end
end