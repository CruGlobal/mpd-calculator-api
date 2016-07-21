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

    context 'show_inactive=true' do
      it 'responds with all ministries including inactive ones' do
        create(:mpd_question_sheet)
        create(:mpd_question_sheet, gp_key: SecureRandom.uuid)
        create(:mpd_question_sheet, active: false)

        get '/v1/ministries?show_inactive=true', nil, 'HTTP_AUTHORIZATION' => "Bearer #{authenticate_guid}"

        expect(response).to be_success
        expect(response).to have_http_status :ok
        expect(json.size).to eq 3
      end
    end

    context 'global_profile_only=true' do
      it 'responds with only global profile ministries' do
        create(:mpd_question_sheet)
        create(:mpd_question_sheet, gp_key: SecureRandom.uuid)
        create(:ministry, active: false)

        get '/v1/ministries?global_profile_only=true', nil, 'HTTP_AUTHORIZATION' => "Bearer #{authenticate_guid}"

        expect(response).to be_success
        expect(response).to have_http_status :ok
        expect(json.size).to eq 1
      end
    end

    context 'refresh=true' do
      it 'reload ministries from global registry' do
        create(:mpd_question_sheet)
        create(:mpd_question_sheet, gp_key: SecureRandom.uuid)
        create(:mpd_question_sheet, active: false)
        allow(Ministry).to receive(:refresh_from_gr) { Ministry.all }

        get '/v1/ministries?refresh=true', nil, 'HTTP_AUTHORIZATION' => "Bearer #{authenticate_guid}"

        expect(Ministry).to have_received(:refresh_from_gr)
        expect(response).to be_success
        expect(response).to have_http_status :ok
        expect(json.size).to eq 2
      end
    end
  end
end
