# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.find_by_email 'admin@digital.com'
unless user.present?
	user = User.create(email: 'admin@digital.com', password: '12345678')
end
user.add_role :admin

HomeSection.create(name: 'headline',default_name: 'home_headline', title: 'We make it easy to run your office', subtitle: 'Join the thousands of companies who use Managed by Q to handle everything from carpet cleaning to appliance repair.',link_text: 'Get Started', link_path: '/sign_up')
HomeSection.create(name: 'services',default_name: 'home_service', title: 'Every office service you need, all in one place', subtitle: 'The search is over. Q offers solutions for every project in your space.')
HomeSection.create(name: 'Stories',default_name: 'home_stories', title: 'See what it&#039;s like to be Managed by Q', subtitle: 'Don&#039;t take our word for it—check our references. Learn how top companies use Q to run their office.')
HomeSection.create(name: 'Join us',default_name: 'home_joins', title: 'Let&#039;s make the world work better', subtitle: 'We&#039;re on a mission to build a better future where technology creates good jobs for everyone.',link_text: 'Join Us &rarr', link_path: '/careers')