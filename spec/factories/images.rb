FactoryBot.define do
  factory :image do
    description { 'e brilha muito no Curintia!'}
    after(:build) do |image|
      image.file.attach(io: File.open(Rails.root.join('spec', 'factories', 'images', 'zina.jpg')), filename: 'zina.jpg', content_type: 'image/jpeg')
    end
  end
end
