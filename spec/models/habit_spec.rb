require 'rails_helper'

RSpec.describe Habit, type: :model do
  it '全パラメータがあれば有効な状態であること' do
    expect(FactoryGirl.build(:habit)).to be_valid
  end
  it 'タイトルが入力されていないときは無効な状態であること' do
    habit = FactoryGirl.build(:habit, title: nil)
    habit.valid?
    expect(habit).to include('can\'t be blank')
  end
  it 'モチベーションが入力されていないときは無効な状態であること' do
    habit = FactoryGirl.build(:habit, motivation: nil)
    habit.valid?
    expect(habit).to include('can\'t be blank')
  end
  it '締め切りが入力されていないときは無効な状態であること' do
    habit = FactoryGirl.build(:habit, deadline: nil)
    habit.valid?
    expect(habit).to include('can\'t be blank')
  end
  it '成果が入力されていないときは無効な状態であること' do
    habit = FactoryGirl.build(:habit, commit: nil)
    habit.valid?
    expect(habit).to include('can\'t be blank')
  end
  it 'ユーザと紐付いていないときは無効な状態であること'
end
