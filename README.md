# Redirect on Back

Prevent re-submission of a form by redirecting after user hits the back button. For Rails 3.1 and above.

### Example Scenario - User Registration

1. User registers by filling in form and hits 'submit'.
2. User wants to change one of his details.
3. User hits 'back'.
4. User changes something and hits 'submit' again.
5. Arrrggg... a new User record has been created instead of updating the existing one.

## Installation (Rails 3.1 and higher)

Add this line to your application's Gemfile:

    gem 'redirect_on_back'

Then execute:

    $ bundle


And then specify the use of the redirect_on_back
javascripts in your `application.js`:

    //= require redirect_on_back

## Usage

In your `create` controller actions:

```ruby
 def create
    @user = User.new(params[:user])
    if result = @user.save
      redirect_on_back edit_user_path(@user) # If user hits 'back' he'll be redirected to edit_user_path
      redirect_to @user
    else
      render :action => :new
    end
  end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
