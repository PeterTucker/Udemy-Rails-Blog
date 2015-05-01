Work files for the Udemy Rails Programming Course<br/>
Course Site: https://www.udemy.com/pro-rubyonrails/

<br/><br/>
How to Update Ruby:
------------------------
Run this:<br/>
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

Update RVM:<br/>
rvm get stable

Reload RVM:<br/>
rvm reload

Update First:<br/>
sudo apt-get update

Install a different version of Ruby with RVM:<br/>
sudo rvm install ruby-2.1.5

Switch to Correct version of Ruby:<br/>
rvm use ruby-2.1.5

<br/><br/>
How to create a new App
------------------------
rails new app_name

<br/><br/>
Open a Port:
------------------------
sudo ufw allow 3000

<br/><br/>
Start Rails server
------------------------
rails s -b 192.168.1.103 -p 3000<br/>
or<br/>
rails s -b 0.0.0.0 -p 3000<br/>

rails s -b localhost (DOES NOT WORK if you try to externally connect)<br/>
" If, however, you started rails server with the '-b' or '--binding' option and told the server to bind to 127.0.0.1, the server would not respond to requests to the external interface. You could still use 127.0.0.1 or localhost but you could not connect to this server using it's external ip address locally or from another machine."<br/>
http://stackoverflow.com/questions/8365097/rails-server-not-working

<br/><br/>
Rails Getting Started Guide
------------------------
http://guides.rubyonrails.org/getting_started.html

<br/><br/>
Routes
-------------------------
Once you've added a route to config/routes.rb, you can then run "rake routes" to have rails to auto define the route files.


<br/><br/>
Generate a Controller
-------------------------
rails g controller articles

<br/><br/>
Generate a Model
-------------------------
rails generate model Article title:string text:text

<br/><br/>
Create tables from migrate files
-------------------------
rake db:migrate