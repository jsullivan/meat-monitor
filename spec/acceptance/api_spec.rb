require "spec_helper"

describe Endpoints::Api do
  include Committee::Test::Methods
  include Rack::Test::Methods

  def app
    Routes
  end

  def schema_path
    "./schema/schema.json"
  end

  describe 'POST /api/meats' do
    it 'returns correct status code and conforms to schema' do
      header "Content-Type", "application/json"
      post '/api/meats', MultiJson.encode({})
      assert_equal 201, last_response.status
      assert_schema_conform
    end
  end

  describe 'POST /api/meats/{meat_id}/readings' do
    it 'returns correct status code and conforms to schema' do
      meat = Meat.create

      post "/api/meats/#{meat.id}/readings", temp: 42
      assert_equal 201, last_response.status
      assert_schema_conform
    end
  end
end
