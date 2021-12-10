### Introduction

- when an HTTP request arrives from the user's browser, we need to know which controller action (method) needs to run
- the router works as a matching service

  - it will look at the HTTP verb and the URL requested and will match it with the appropriate controller action to run

- Rails will grab all the parameters that come with a request and will make them available for you in a hash called params that can be used in a controller
  - useful for form submissions

#### Root

- where users should be sent to when they go to google.com
- we just tell rails which controller and action to map that route to

```ruby
  root to: "google#index"
```

- "action" means the method inside the controller that is called that
- "index" is the method defined in the google controller

#### RESTful Routes

- there's basically 7 main types of actions that you can do to a "resource" or object like a blog post or user

###### these are:

- GET all posts (aka **"index"** the posts)
- GET one specific post (aka **"show"** post)
- GET page that lets you create a new post (aka view the **"new"** post)
- POST the data filled out for a new post back to the server so it can create that post (aka **"create"** post)
- GET page that lets you edit an existing post (aka view the **"edit"** post page)
- PUT data you just filled out to edit the post back to the server so it can actually update (aka **"update"** post)
- DELETE one specific post by sending a delete request to the server (aka **"destroy"** post)

###### how to represent RESTful route

```ruby
  get "/posts", to: "posts#index"
  get "/posts/:id", to: "posts#show"
  post "/posts", to: "posts#create"
  put "/posts/:id", to: "posts#update"
  delete "/posts/:id", to: "posts#destroy"
```

- these routes are essentially a Ruby method that matches that particular URL and HTTP verb with the corret controller action

###### resources

- this method lets you do in one line what we wrote above

```ruby
  resources :posts
```

- this is a ruby method that basicaly just outputs those seven routes

###### when you want to show navigation links

- rails gives you a helper method that lets you create links called `link_to` but you need to supply it with text that you want to show and the URL to link it to

```ruby
link_to "Edit this post", edit_post_path(3)
```

- rails will generate helper methods for you which correspond to the names of all your routes
  - these will end with `_path` or `_url`
  - they also generate the path portion of the URL

-any route that requires you to specify an ID or other parameters will need you to supply those to the helper methods

#### Routes go to Controller Actions

- a very simple controller

```ruby
class PostsController < ApplicationController
  def index
    # code to grab all posts so they can be displayed in the Index view
  end

  def show
    # simple code to grab the proper Post so it can be displayed in the Show view
  end

  def new
    # code to create an empty post and send the user to the New view for it, which will have a form for creating the post
  end

  def create
    # code to create a new post based on the parameters that were submitted with the form (now available in the params hash)
  end

  def edit
    # simple code to find the post we want and send the user to the Edit view, which also has a form for editing the post
  end

  def update
    # code to figure out which post we're trying to update then actually update the attributes of that post.
    # once that's done, redirect us to somewhere like the Show page for that post
  end

  def destroy
    # very simple code to find the post we're referring to and destroy it
  end
```

###### sometimes you don't want all seven routes

- in this case, you can specify the ones that you want using `only` or just the ones you don't want using `except`

```ruby
resources :posts, only: [:index, :show]
resources :users, except: [:index]
```

#### Name spaces

- you may want to organize a group of controllers
- you can do this with `namespace`

```ruby
namespace :admin do
  resources :articles, :comments
end
```

#### Nested Resources

- you can have this scenario:

```ruby
class Magazine < ApplicationRecord
  has_many :ads
end

class Ad < ApplicationRecord
  belongs_to :magazine
end
```

- using nested routes will allow you to capture the relationship in your routing

```ruby
resources :magazines do
  resources :ads
end
```
