FactoryGirl.define do
  factory :book do
    author "MyAuthor"
    title "MyTitle"
    description "MyDescription"
    ISBN_number 1234567891
    page_count 123
    year 2014
    publisher "MyPublisher"
  end
end
