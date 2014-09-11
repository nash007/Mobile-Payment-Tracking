class LoggedController < ApplicationController
  def index
  end
  def new
  end
  def create
	redirect_to(:controller => 'logged' , :action => 'login_page' )
  end
  def update

	redirect_to(:controller => 'logged' , :action => 'login_page' )
  end
  def logged_in
	#flash[:notice]="Log in failed , Please try again !"
  	@invoice=Invoice.new
	#@name=params[:name]
  end
  def logged_in1
  	@name=params[:name]
	@bills = Invoice.where(:organization => @name)
  end
  def home_page
  	@email=params[:name]
	user=User.find_by_email(params[:name])
	@bills = Invoice.where(:vendor_email => @email)
	@name=user.name
	@id=user.id
  end
	
  def changeup
  	billing=Invoice.find(params[:id])
	billing.flag=1
	billing.save
	redirect_to(:controller => 'logged' , :action => 'logged_in1' , :name => session[:name123])
  end


  def changedown
  	billing=Invoice.find(params[:id])
	billing.flag=2
	billing.save
	redirect_to(:controller => 'logged' , :action => 'logged_in1' , :name => session[:name123])
  end





  def login_check
  	email=params[:email]
	password=params[:password]
	user=User.find_by_email(email)
	if user
	if password == user.password
		session[:email123]=email
		session[:name123]=user.name
		session[:type123]=user.member_type
		if user.member_type == "vendor"
			redirect_to(:controller => 'logged' , :action => 'home_page' , :name => user.email)
		else
			redirect_to(:controller => 'logged' , :action => 'logged_in1' , :name => user.name)
		end
	else
		flash[:error]="Log in failed , Please try again !"
		redirect_to(:controller => 'logged' , :action => 'login_page') 
	end
	else
		flash[:error]="Log in failed , Please try again !"
		redirect_to(:controller => 'logged' , :action => 'login_page' )
	end
  end

  def login_page
  	email=params[:emails]
	if email!= NIL
		redirect_to(:controller => 'logged' , :action => 'login_check' )
	end		
  end


end
