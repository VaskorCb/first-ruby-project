json.extract! blog, :id, :blog_title, :blog_description, :created_at, :updated_at
json.url blog_url(blog, format: :json)
