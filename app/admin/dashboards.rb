ActiveAdmin::Dashboards.build do

  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.
  
  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
  #   section "Recent Posts" do
  #     ul do
  #       Post.recent(5).collect do |post|
  #         li link_to(post.title, admin_post_path(post))
  #       end
  #     end
  #   end

  section "Recent Artists" do 
    table_for PrelaunchSubscriber.where(:artist => true).limit(15).order("created_at DESC") do
      column ("Email") { |sub| link_to(sub.email, admin_prelaunch_subscriber_path(sub)) }
      column ("Name") { |sub|  sub.name }
      column ("Portfolio") { |sub| sub.portfolio }
      column ("Location") { |sub| sub.location }
      column ("Time") { |sub|  sub.created_at }
    end
  end

  section "Recent Collectors" do 
    table_for PrelaunchSubscriber.where(:artist => false).limit(15).order("created_at DESC") do
      column ("Email") { |sub| link_to(sub.email, admin_prelaunch_subscriber_path(sub)) }
      column ("Name") { |sub|  sub.name }
      column ("Time") { |sub|  sub.created_at }
    end
  end
  
  # == Render Partial Section
  # The block is rendered within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     div do
  #       render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #     end
  #   end
  
  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.
  
  # == Conditionally Display
  # Provide a method name or Proc object to conditionally render a section at run time.
  #
  # section "Membership Summary", :if => :memberships_enabled?
  # section "Membership Summary", :if => Proc.new { current_admin_user.account.memberships.any? }

end
