# This will guess the User class
FactoryGirl.define do
  factory :entry do
    master false
    name "John Doe"
    categories
    nominees

    factory :master, class: Entry do
      master true
    end
  end

  factory :category do
    name "Sample Category"
    value 13
    nominees
    entries
  end

  factory :nominee do
    name "American Sniper"
    categories
    entries
    selections
  end
end