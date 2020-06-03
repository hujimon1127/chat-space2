require 'rails_helper'

describe TweetsController do
  describe 'GET #new' do
    it "@tweetに正しい値が入っていること" do
      tweet = create(:tweet)
      get :edit, params: { id: tweet }
      expect(assigns(:tweet)).to eq tweet
    end
    it "new.html.erbに遷移すること" do
      tweet = create(:tweet)
      get :edit, params: { id: tweet }
      expect(response).to render_template :edit

    end
  end

  describe 'GET #index' do
    it "@tweetに正しい値が入っていること" do
      tweets = create_list(:tweet, 3) 
      get :index
      expect(assigns(:tweets)).to match(tweets)
    end

    it "index.html.erbに遷移すること" do
    end
  end
end