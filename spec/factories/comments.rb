FactoryGirl.define do
  factory :comment do
    author 'Mike'
    sequence(:body) { |n| "Comment body #{n}" }
  end
end