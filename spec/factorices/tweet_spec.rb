require 'rails_helper'

feature 'tweet', type: :feature do
# このブロックの内部にscenarioを記述していく
  scenario 'ユーザー情報が更新されていること' do
    # ログイン前には投稿ボタンがない
    visit root_path
    expect(page).to have_no_content('投稿する')
  end
end
