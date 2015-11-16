# Ruby 

# Rails

# Phusion Passenger
sudo gem install passenger; # then: sudo passenger-install-apache2-module;
 
#Please edit your Apache configuration file, and add these lines:
 
#   LoadModule passenger_module /var/lib/gems/1.9.1/gems/passenger-4.0.37/buildout/apache2/mod_passenger.so
#   <IfModule mod_passenger.c>
#     PassengerRoot /var/lib/gems/1.9.1/gems/passenger-4.0.37
#     PassengerDefaultRuby /usr/bin/ruby1.9.1
#   </IfModule>
 

# misc gems


