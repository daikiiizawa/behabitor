# frozen_string_literal: true
FactoryGirl.define do
  factory :target do
    type 1
    title 'MyText'
    description 'MyString'
    text 'MyString'
    precondition 'MyString'
    text 'MyString'
    habit nil
  end
end
