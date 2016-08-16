# frozen_string_literal: true
require 'rails_helper'

feature 'Home', type: :feature do
  context 'ログインしていない場合' do
    scenario 'サインインページに遷移する' do
      visit root_path
      expect(page.current_path).to eq new_user_session_path
    end
  end
  context 'ログインしている場合' do
    scenario 'ページが表示される' do
      visit root_path
      expect(page.current_path).to eq root_path
    end
  end
end