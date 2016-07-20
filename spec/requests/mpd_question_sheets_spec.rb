require 'rails_helper'

RSpec.describe "QuestionSheets", type: :request do
  let(:json) { JSON.parse(response.body) }

  describe 'GET /mpd_def' do
    context 'without a session' do
      it 'responds with HTTP 401' do
        get '/mpd_def'

        expect(response).not_to be_success
        expect(response).to have_http_status :unauthorized
      end
    end

    context 'with a session' do
      it 'responds with all active ministries' do
        create(:mpd_question_sheet)
        create(:mpd_question_sheet, archived: false)

        get '/mpd_def', nil, 'HTTP_AUTHORIZATION' => "Bearer #{authenticate_guid}"

        expect(response).to be_success
        expect(response).to have_http_status :ok
        expect(json.size).to eq 2
      end
    end
  end



  # describe "GET /question_sheets" do
  #   it "works! (now write some real specs)" do
  #     get '/mpd_def'
  #     expect(response).to have_http_status(200)
  #   end
  # end
end
