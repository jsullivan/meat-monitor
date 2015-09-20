require "spec_helper"

describe Endpoints::Meats do
  include Rack::Test::Methods

  describe "GET /meats" do
    it "succeeds" do
      get "/meats"
      assert_equal 200, last_response.status
    end
  end
end
