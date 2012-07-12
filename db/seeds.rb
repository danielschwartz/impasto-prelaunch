# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

AdminUser.create(:email => 'tech@impas.to', :password => '!mp@st0', :password_confirmation => '!mp@st0');
AdminUser.create(:email => 'daniel@impas.to', :password => '!mp@st0', :password_confirmation => '!mp@st0');
AdminUser.create(:email => 'taleeb@impas.to', :password => '!mp@st0', :password_confirmation => '!mp@st0');
AdminUser.create(:email => 'derek@impas.to', :password => '!mp@st0', :password_confirmation => '!mp@st0');
AdminUser.create(:email => 'anthony@impas.to', :password => '!mp@st0', :password_confirmation => '!mp@st0');
