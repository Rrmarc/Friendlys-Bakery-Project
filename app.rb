require 'sinatra'
require 'sinatra/reloader'
require './cookies.rb'
require './muffin.rb'
require './cake.rb'


register Sinatra::Reloader





@@cookie3= Cookies.new('Triple Chocolate Nut Banna','Drak, Milk, and Cocoa Chocolated, with wallnuts chip chops, and a bit of banna favor. Warmed it up and pair it with a class of milk', '$4.00')
@@cookie2= Cookies.new('Corn Corn Cookies', 'Gluten free, yummy certified. Thought corn didnt belong in a cookie? Let us change your mind.', '$3.00')
@@cookie1= Cookies.new('Peanutbutter Chocolate Chip', 'Allergic to peanuts? dont come here. This cookie will make you want to commit suiced of how tastey it is.', '$3.00')

@@muffin1= Muffin.new('Yummy Crum', 'This muffin has all the good ingredients', '$5.00')
@@muffin2= Muffin.new('Corn Baby Muffin','Corn muffin with jelly jam stuffing.OOoou Thats delicious Certified','$5.00')
@@muffin3= Muffin.new('Baby Carrot','Have you ever had a carrot cake? Try it muffin size, warmed up and vanilla frosting drizzle, my nizzel.', '$6.00')


@@cake1= Cake.new('Crum Cake', 'For any Celebration, or just cuz. Tastey treat to eat and share if you choose.', '$30.00')
@@cake2= Cake.new('Mama Nolas Famous Straberry Cake', 'Too Heavy for Your Pockets prop stage hand made this cake eight times a week for each performance. Ever wonder what it taste like? Give it a try', '$30.00')
@@cake3= Cake.new('CKE','For the minimalist who enjoys intentional yummy eating. Astheticaly pleasing with a warm fuzzy feeling for your taste buds.','$30.00')


get '/' do
    erb :home, :layout => :page_layout
end

get '/cookies' do
    erb :cookies, :layout => :page_layout
end

get '/muffin' do
    erb :muffin, :layout => :page_layout
end

get '/cake' do
    erb :cake, :layout => :page_layout
end

