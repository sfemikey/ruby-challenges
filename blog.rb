class Blog  #create parent class "Blog"

  @@all_blog_posts = []  #save all blog posts in an array
  @@num_blog_posts = 0   #blog posts starting at 0

  def Blog.all
    @@all_blog_posts
  end

  def Blog.add(post)
    @@all_blog_posts << post
    @@num_blog_posts += 1
  end

  def Blog.publish   #create a publish method
    @@all_blog_posts.each do |post|
      puts "Title:\n #{post.title}"
      puts "Body:\n #{post.content}"
      puts "Publish Date:\n #{post.publish_date}"
    end
  end

end


class BlogPost < Blog

  def BlogPost.create
    post = new
    puts "Name your blog post:"
    post.title = gets.chomp
    puts "Your blog post content:"
    post.content = gets.chomp
    post.publish_date = Time.now
    post.save
    puts "Do you want to create another blog post?[Y/N]"
    create if gets.chomp.downcase == 'y'
  end

  def title
    @title
  end

  def title=(title)
    @title = title
  end

  def publish_date
    @publish_date
  end

  def publish_date=(publish_date)
    @publish_date = publish_date
  end

  def content
    @content
  end

  def content=(content)
    @content = content
  end

  def save
    BlogPost.add(Blog)
  end

end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish
