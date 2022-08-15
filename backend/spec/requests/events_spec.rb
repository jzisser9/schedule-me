require 'rails_helper'

RSpec.describe "Events", type: :request do
  describe "GET /events" do
    let!(:event1) { FactoryBot.create(:event, name: 'Pool Party') }
    let!(:event2) { FactoryBot.create(:event, name: 'Dinner Out') }
    let!(:event3) { FactoryBot.create(:event, name: 'Movie Night') }

    it "should return all Events" do
      get '/api/v1/events'
      expect(response).to have_http_status(200)
      JSON.parse(response.body).tap do |body|
        expect(body).to be_an(Array)
        expect(body.length).to eq(3)
        expect(body.first['name']).to eq(event1.name)
        expect(body.second['name']).to eq(event2.name)
        expect(body.third['name']).to eq(event3.name)
      end
    end
  end

  describe 'GET /events/:id' do
    let!(:event) { FactoryBot.create(:event) }

    it 'should return the Event with the provided id' do
      get "/api/v1/events/#{event.id}"
      expect(response).to have_http_status(200)
      JSON.parse(response.body).tap do |body|
        expect(body).to be_a(Hash)
        expect(body).to match(hash_including({ 'id' => event.id, 'name' => event.name, 'starts_at' => event.starts_at.iso8601(3), 'ends_at' => event.ends_at.iso8601(3) }))
      end
    end
  end
end
