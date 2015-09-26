module Endpoints
  class Meats < Base
    namespace "/meats" do
      before do
        content_type :html, charset: 'utf-8'
      end

      get do
        @current_meat = Meat.last

        haml :index
      end
    end
  end
end
