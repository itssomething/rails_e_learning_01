20.times do
  Category.create!([
    {name: Faker::Name.name}
  ])
end

20.times do
  QuestionBank.create!([
    {name: Faker::Name.name, category_id: 2}
  ])
end

question_banks = QuestionBank.all

question_banks.each do |question_bank|
  50.times do
    Question.create!([
      {content: Faker::Lorem.sentence, question_bank_id: question_bank.id}
    ])
  end
end

questions = Question.all

questions.each do |question|
  4.times do
    Answer.create!([
      {content: Faker::Lorem.sentence, question_id: question.id}
    ])
  end
end

# 20.times do
#   User.create!([
#     {name: Faker::Name.name,
#     email: Faker::Internet.email}
#   ])
# end
