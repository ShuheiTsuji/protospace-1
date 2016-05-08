include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :captured_image, class: CapturedImage do
    prototype_id   { Faker::Number.number(2) }
    content        { fixture_file_upload("#{::Rails.root}/spec/fixtures/img/sample.png", 'image/png') }

    trait :main do
      status   :main
    end

    trait :sub do
      status   :sub
    end

    factory :main_image, traits: [:main]
    factory :sub_image, traits: [:sub]
  end
end
