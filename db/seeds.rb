10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "loram"
  )
end

puts "10 blogs created"

5.times do |skills|
  Skill.create!(
    title: "Rails #{skills}",
    percent_utilized: 15
  )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio #{portfolio_item}",
    subtitle: "My great service",
    body: "ipsum",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200",
  )
end

puts "9 portfolios created"
