FactoryGirl.define do
  factory :habit do
    title '毎日、走る'
    motivation '痩せて、彼女をゲットする！'
    deadline Date.parse('2016-12-24 00:00:00')
    commit '体重を50kgにする'
    declaration '痩せます！！！'
  end
end
