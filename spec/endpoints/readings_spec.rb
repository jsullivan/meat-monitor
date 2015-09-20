require "spec_helper"

describe Endpoints::Readings do
  include Rack::Test::Methods

  describe "GET /readings" do
    it "succeeds" do
      get "/readings"
      assert_equal 200, last_response.status
    end
  end
end
