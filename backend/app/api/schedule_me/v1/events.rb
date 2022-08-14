module ScheduleMe
  class V1::Events < Base
    version :v1, using: :path
    format :json
    prefix :api

    resource :events do
      desc 'Return all Events'
      get do
        events = Event.all
        present events, with: ScheduleMe::Entities::Event
      end

      desc 'Return an Event by id'
      route_param :id do
        get do
          event = Event.find(params[:id])
          present event, with: ScheduleMe::Entities::Event
        end
      end
    end
  end
end