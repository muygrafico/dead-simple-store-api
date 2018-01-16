# spec/requests/publications_spec.rb
require 'rails_helper'

RSpec.describe 'Publications Response' do

  let!(:user) { create(:user, email: 'example@email.com') }
  let!(:publications) { create_list(:publication, 10, user_id: user.id) }

  describe 'GET /publications' do
    it 'reponds with invalid request without JWT' do
      get '/publications'
      expect(response).to have_http_status(401)
      expect(response.body).to match(/Not Authorized/)
    end

    it 'responds with JSON with JWT' do
      jwt = login_user(user)
      get '/publications', headers: { Authorization: "Bearer #{jwt}" }
      publicationsAll = JSON.parse response.body
      expect(publicationsAll['publications'].size).to eq(10)
    end

  end
end
