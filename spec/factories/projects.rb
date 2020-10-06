FactoryBot.define do
  factory :project do
    title { 'Lorem Ipsum' }
    description { 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas sed massa ac cursus. Sed tempus at sapien in rutrum. Sed nec lectus pretium, ultrices ligula id, cursus leo. Donec tincidunt sapien ut neque venenatis, et lacinia mi blandit. Sed tempor eros sit amet elit condimentum commodo. Suspendisse in tincidunt risus. Proin faucibus sit amet ante eu pulvinar.' }
    target { 350 }
    due_date { Date.today }
    image { Rack::Test::UploadedFile.new("#{Rails.root}/spec/fixtures/test.png") }
    user
  end
end
