class SessionsController < ApplicationController

  # GET /sessions
  # GET /sessions.json
  def index
    @sessions = Session.all
  end

  # GET /sessions/1
  # GET /sessions/1.json
  def show
  end

  # GET /sessions/new
  def new
    @session = Session.new
  end

  # GET /sessions/1/edit
  def edit
  end

  # PATCH/PUT /sessions/1
  # PATCH/PUT /sessions/1.json
#  def update
#    respond_to do |format|
#      if @session.update(session_params)
#        format.html { redirect_to @session, notice: 'Session was successfully updated.' }
#        format.json { head :no_content }
#      else
#        format.html { render action: 'edit' }
#        format.json { render json: @session.errors, status: :unprocessable_entity }
#      end
#    end
#  end

# Real---------------------------

# POST /sessions
  # POST /sessions.json
  def create
#puts "CREATING THE SESSION!"

    @user = User.find_by(username: params[:session][:username])
#puts "USER IS: #{@user}"
    if @user and @user.authenticate(params[:session][:password])
#      puts "USER SUCCESSFUllY LOGGED IN"
      session[:user_id] = @user.id
      flash[:notice] = "Successfully logged in! Welcome!"
#      puts "SESSION SUCCESSFULLY CREATED! :D"
      redirect_to url_for(:controller => 'users', :action => 'show', :id => @user.id)
    else
#      puts "USER FAILED TO LOG IN!"
        flash[:alert] = "Failed to log in, incorrect username/password"
        redirect_to url_for(:controller => "users", :action => 'new')
    end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
#puts "DESTROY SESSION INITIATED!"

    session[:user_id] = nil
#puts "SESSION CLOSED"
    redirect_to url_for(:controller => "users", :action => 'new')
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def session_params
      params.require(:session).permit(:username, :password)
    end
end
