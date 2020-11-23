20.times do
  Article.create!(
    title: Faker::Article.title,
    author: Faker::Article.author,
    tag: Faker::Article.tag,
    content: Faker::Article.content
  )
end
