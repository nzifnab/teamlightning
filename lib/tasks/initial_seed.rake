namespace :initial_seed do
  task :go => :environment do
    category = Forem::Category.create(:name => 'General')

    user = User.new(
      display_name: "Zifnab",
      email: "nathan.benes@gmail.com",
    )
    user.password = "changeme"
    user.forem_admin = true
    user.confirmed_at = Time.zone.now
    user.save!

    forum = Forem::Forum.find_or_create_by(:category_id => category.id, 
                               :name => "Team Lightning",
                               :description => "Team Lightning guild forem.")

    post = Forem::Post.find_or_initialize_by(text: "Hello World")
    post.user = user

    topic = Forem::Topic.find_or_initialize_by(subject: "Welcome to Our Forum :D")
    topic.forum = forum
    topic.user = user
    topic.posts = [post]
    topic.save!
  end
end
