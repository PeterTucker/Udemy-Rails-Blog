Work files for the Udemy Rails Programming Course<br/>
Course Site: https://www.udemy.com/pro-rubyonrails/

------------------------

------------------------
How to Update Ruby:
------------------------
Run this:
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

Update RVM:
rvm get stable

Reload RVM:
rvm reload

Update First:
sudo apt-get update

Install a different version of Ruby with RVM:
sudo rvm install ruby-2.1.5

Switch to Correct version of Ruby:
rvm use ruby-2.1.5
------------------------

------------------------
How to create a new App
------------------------
rails new app_name
------------------------

------------------------
Open a Port:
------------------------
sudo ufw allow 3000
------------------------

------------------------
Start Rails server
------------------------
rails s -b 192.168.1.103 -p 3000
or
rails s -b 0.0.0.0 -p 3000

rails s -b localhost (DOES NOT WORK if you try to externally connect)
" If, however, you started rails server with the '-b' or '--binding' option and told the server to bind to 127.0.0.1, the server would not respond to requests to the external interface. You could still use 127.0.0.1 or localhost but you could not connect to this server using it's external ip address locally or from another machine."
http://stackoverflow.com/questions/8365097/rails-server-not-working

------------------------

------------------------
Rails Getting Started Guide
------------------------
http://guides.rubyonrails.org/getting_started.html
------------------------