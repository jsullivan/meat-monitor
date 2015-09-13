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
    it 'returns correct status code and conforms to schema' do
      get '/meats'
      assert_equal 200, last_response.status
      assert_schema_conform
    end
  end

  describe 'POST /meats' do
    it 'returns correct status code and conforms to schema' do
      header "Content-Type", "application/json"
      post '/meats', MultiJson.encode({})
      assert_equal 201, last_response.status
      assert_schema_conform
    end
  end

  describe 'GET /meats/:id' do
    it 'returns correct status code and conforms to schema' do
      get "/meats/123"
      assert_equal 200, last_response.status
      assert_schema_conform
    end
  end

  describe 'PATCH /meats/:id' do
    it 'returns correct status code and conforms to schema' do
      header "Content-Type", "application/json"
      patch '/meats/123', MultiJson.encode({})
      assert_equal 200, last_response.status
      assert_schema_conform
    end
  end

  describe 'DELETE /meats/:id' do
    it 'returns correct status code and conforms to schema' do
      delete '/meats/123'
      assert_equal 200, last_response.status
      assert_schema_conform
    end
  end
end
