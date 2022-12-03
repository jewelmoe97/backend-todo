class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/todo' do
    todo = Mylist.all
    todo.to_json;
  end


  get '/category' do
    todo = Mycategory.all
    todo.to_json;
  end

  get '/shopping/:id' do
    todo = My_shopping.find(params[:id])
    todo.to_json;
   end


  get '/shopping' do
    todo = My_shopping.all
    todo.to_json;
  end


  post '/shopping' do
    todo = My_shopping.create(
      name: params[:name],
    )
   todo.to_json
  end

  delete '/shopping/:id' do
   
    todo = My_shopping.find(params[:id])
   
    todo.destroy
   
    todo.to_json
  end


  patch '/shopping/:id' do
    todo = My_shopping.find(params[:id])
    todo.update(
      name: params[:name],
    )
    todo.to_json
  end



  get '/todo/:id' do
   todo = Mylist.find(params[:id])
   todo.to_json;
  end


  patch '/todo/:id' do
    todo = Mylist.find(params[:id])
    todo.update(
      name: params[:name],
    )
    todo.to_json
  end


  post '/todo' do
    todo = Mylist.create(
      name: params[:name],
    )
   todo.to_json
  end





  delete '/todo/:id' do
    # find the review using the ID
    todo = Mylist.find(params[:id])
    # delete the reviewy
    todo.destroy
    # send a response with the deleted review as JSON
    todo.to_json
  end

end
