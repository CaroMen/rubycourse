#### Introduction

- controller's act as the ultimate middleman
- will know which "questions" it wants to ask the Model, but will let the Model solve those questions
- will know which view it wants to render and send back to the browser, but lets the view take care of putting all the HTML together

```ruby
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
end
```

#### Naming

- rails assumes things are named a certain way and executres them behind the scenes based on those names
- your controller and its actions have to be named whatever you called them in your routes.rb file

- once rails gets to the end of the controller action, it will grab all the instance variables from the controller and sends them over the view file (_named the same thing as the controller action and lives in a folder named controller_)

#### Rendering and Redirecting

- there are times when you may want to fully redirect a user to a new page rather than rendering the result of your controller action.
- redirects will typically occur after controller actions where you've submitted information to create a new post, for example.
- your application treats a redirect as a completely new HTTP request, so it enters through the router again, looks for the show page that corresponds to that pos, and renders it normally
  - also means any instance variable you set in your original #create controller action are wiped out along the way

###### what happens if something fails?

- the view page gets passed the instance variables from your current controller action
  - Example scenario:
    - you tried to #create a new Post and stored it to @post, but it fails to save
    - you then render the #new action's view and that view receives the @post you were just working with in the #create action

```ruby
class PostsController < ApplicationController
  # make (don't save) an empty Post so the form we render knows which
  # fields to use and where to submit the form
  # this action will render app/views/posts/new.html.erb once done
  def new
    @post = Post.new
  end

  # we know this will get run once we receive the submitted form from our
  # new action above
  def create
    if @post.save
      redirect_to post_path(@post.id) # or redirect_to @post
    else
      render :new
    end
  end
end
```

#### Multiple Render/Redirects

- render and redirect_to do not immediately stop your controller action like a return statement would

```ruby
def show
  @user = User.find(params[:id])
  if @user.is_male?
    render "show-boy"
  end
  render "show-girl"
end
```

- this would display an error because you're telling it to render both show-boy and show-girl

##### Params and Strong Parameters

- we access all the parameters that were packaged up with the original HTTP request with the params hash
- sometimes you want to send parameters from the browser that are all packaged nicely into a hash or nested into an array
- strong parameters were created so a user can't send over harmful data
  - you can prevent this by explicitly verifying that oyu are willing to accept certain items of a hash or array
  - to do this, you use the methods `require` or `permit`
  - you basicaly require the name of your array or hash to be in Paramsand then you permit the individual attributes inside that hash to be used

```ruby
def whitelisted_post_params
  params.require(:post).permit(:title, :body, :author_id)
end
```
