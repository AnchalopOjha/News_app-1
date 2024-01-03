FactoryBot.define do
    factory :news do
      tittle { 'breaking news' }
      description { 'testing' }
      association :category
      association :city
    end
  end