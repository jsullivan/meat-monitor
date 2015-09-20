module Endpoints
  class Api < Base
    namespace "/api" do
      before do
        content_type :json, charset: 'utf-8'
      end

      post "/meats" do
        meat = Meat.create
        status 201
        encode(
          id:         meat.id,
          created_at: meat.created_at.utc.iso8601
        )
      end

      post "/meats/:meat_id/readings" do
        reading = Reading.create(
          meat_id: params[:meat_id],
          temp:    params[:temp]
        )
        status 201
        encode(
          id:         reading.id,
          created_at: reading.created_at.utc.iso8601,
          meat_id:    reading.meat_id,
          temp:       reading.temp
        )
      end
    end
  end
end
