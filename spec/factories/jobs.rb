FactoryGirl.define do
  factory :job do
    work_request "1234"
    completed false
    user_id 1
    due_date "2015-05-27 00:00:00"
  end
end
