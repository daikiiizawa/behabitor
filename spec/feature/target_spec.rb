# frozen_string_literal: true
require 'rails_helper'

feature 'Habit', type: :feature do
  let(:habit){create :habit, target: target}
  let(:target){ create :target}
  scenario '習慣が登録できる' do
    visit new_habit_path
    fill_in 'habit_name', habit.name
    fill_in 'habit_name', habit.name
    fill_in 'habit_name', habit.name
    fill_in 'habit_name', habit.name
    click 'Submit'
    expect(page.current_path).to eq new_habit_target_path(habit)
  end
  scenario 'パラメータが足りない場合はバリデーションする' do
    visit new_habit_path
    click 'Submit'
    expect(page.current_path).to eq new_habit_path(habit)
  end
end