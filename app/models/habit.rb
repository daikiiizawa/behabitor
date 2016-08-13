# frozen_string_literal: true
class Habit < ActiveRecord::Base
  belongs_to :user
  has_many :targets
end
