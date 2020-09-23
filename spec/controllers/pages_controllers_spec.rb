require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  render_views

  describe 'GET #index' do
    before :each do
      get :home
    end

    it 'returns a success response' do
      expect(response).to be_successful
    end

    it 'has a h1 tag with Home inside' do
      expect(response.body).to match(/<h1.*>.*home.*<\/h1>/i)
    end
  end
end
