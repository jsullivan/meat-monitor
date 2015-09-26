module Endpoints
  class Meats < Base
    namespace "/meats" do
      before do
        content_type :html, charset: 'utf-8'
      end

      get do
        @meats = Meat.all
        200
        haml :index
      end

      post do
        status 201
        encode Hash.new
      end

      get "/:id" do
        200
        @meat = Meat[id: params[:id]]
      end
    end
  end
end
