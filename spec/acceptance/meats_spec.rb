require "spec_helper"

describe Endpoints::Meats do
  include Committee::Test::Methods
  include Rack::Test::Methods

  def app
    Routes
  end

  def schema_path
    "./schema/schema.json"
  end

  describe 'GET /meats' do
    it 'returns correct status code' do
      get '/meats'
      assert_equal 200, last_response.status
    end
  end

  describe 'GET /meats/:id' do
    it 'returns correct status code' do
      meat = Meat.create

      get "/meats/#{meat.id}"
      assert_equal 200, last_response.status
    end
  end
end
