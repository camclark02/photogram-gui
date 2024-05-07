class UsersController < ApplicationController
  def index
    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc })
    render({ :template => "user_templates/index" })
  end

  def show
    # Parameters: {"username"=>"2"}
    url_username = params.fetch("username")
    matching_usernames = User.where({ :username => url_username })

    @the_user = matching_usernames.at(0)
    render({ :template => "user_templates/show" })
  end

  def create
    input_username = params.fetch("input_username")
    
    a_new_user = User.new

    a_new_user.username = input_username

    a_new_user.save

    redirect_to("/users/" + input_username)
  end

end
