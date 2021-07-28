class SubscribersController < ApplicationController
  def index
    response = EmailSmsService.users  
          @users = response.parsed_response
          if response.code != 200
            flash[:notice] = 'Error'
          end
  end

  def new
  end

  def create
      response = EmailSmsService.create(request.params)         
      @subscriber = JSON.parse(response.body)
      if(response.code == 201) 
      flash[:notice] = 'User created'     
      redirect_to :controller => "subscribers", :action => 'index'
      else
        render "new"
      end
  end

  def login
     
      response = EmailSmsService.login(request.params)
      
      if(response.body == 'OTP Matched') 
           
      redirect_to :controller => "subscribers", :action => 'welcome'
      flash[:notice] = 'OTP verified successfully'
      
      else(response.body == 'OTP Mismatch')
        
        flash[:notice] = response.body
        render "login_form"
             
      end
      

  end

  def welcome

  end
  
end
