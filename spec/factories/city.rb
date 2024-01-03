FactoryBot.define do
    factory :city do
     name { 'rewa' }
     association :state
    end
  end
