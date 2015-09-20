require "spec_helper"

describe Endpoints::Api do
  include Rack::Test::Methods

  describe "POST /api/meats" do
    it "succeeds" do
      post "/api/meats"
      assert_equal 201, last_response.status
    end
  end

  describe "POST /api/meats/{meat_id}/readings" do
    it "succeeds" do
      meat = Meat.create

      post "/api/meats/#{meat.id}/readings", temp: 42
      assert_equal 201, last_response.status
    end
  end
end
