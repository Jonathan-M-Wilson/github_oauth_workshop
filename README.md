# README
# OAuth Workshop

This simple app demonstrates functionality of Github Oauth. A visitor can login on the welcome page by clicking on the Login button which redirects them to Github OAuth. If the visitor approves logging into Github with their credentials, the visitor permits this application to see their public and private repositories. Once logged in, they are redirected to thier dashboard where they will find a list of both thier public and private repos.

### Local Setup
To setup locally, follow these instructions:

- Fork & Clone Repo
  - Fork or clone this repo.
  - Git clone git@github.com:Jonathan-M-Wilson/github_omniauth.git
- Install Gems
  - Run bundle install to install all gems in the Gemfile
  - Run figaro install
- Set Up Local Database
  - Run rails db:create


### Use
In the Terminal, cd into this directory and fire up rails server using ```rails server```. In your browser, navigate to http://localhost:3000. Click the Login with GitHub button and enter in your valid GitHub email and password. From here you will be redirected to your dashboard and should see a list of all your public and private repos!

![](app/assets/images/github-oauth-gif.gif)
