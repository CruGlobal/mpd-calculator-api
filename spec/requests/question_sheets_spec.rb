require 'rails_helper'

RSpec.describe "QuestionSheets", type: :request do
  describe "GET /question_sheets" do
    it "works! (now write some real specs)" do
      get '/mpd_def'
      expect(response).to have_http_status(200)
    end
  end
end
