module Endpoints
  class Meats < Base
    namespace "/meats" do
      before do
        content_type :html, charset: 'utf-8'
      end

      get do
        200
        @meats = Meat.all
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
