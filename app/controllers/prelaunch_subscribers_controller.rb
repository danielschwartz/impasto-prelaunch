class PrelaunchSubscribersController < ApplicationController
  # GET /prelaunch_subscribers
  # GET /prelaunch_subscribers.json
  # def index
  #   @prelaunch_subscribers = PrelaunchSubscriber.all

  #   respond_to do |format|
  #     format.html # index.html.erb
  #     format.json { render :json => @prelaunch_subscribers }
  #   end
  # end

  # # GET /prelaunch_subscribers/1
  # # GET /prelaunch_subscribers/1.json
  # def show
  #   @prelaunch_subscriber = PrelaunchSubscriber.find(params[:id])

  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render :json => @prelaunch_subscriber }
  #   end
  # end

  # # GET /prelaunch_subscribers/new
  # # GET /prelaunch_subscribers/new.json
  def new
    @prelaunch_subscriber = PrelaunchSubscriber.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # # GET /prelaunch_subscribers/1/edit
  # def edit
  #   @prelaunch_subscriber = PrelaunchSubscriber.find(params[:id])
  # end

  # # POST /prelaunch_subscribers
  # # POST /prelaunch_subscribers.json
  def create
    @prelaunch_subscriber = PrelaunchSubscriber.new(params[:prelaunch_subscriber])

    logger.debug "#{params[:prelaunch_subscriber]}"

    respond_to do |format|
      if @prelaunch_subscriber.save
        format.html { redirect_to root_url }
        format.json { render :json => { :success => true } }
      else
        format.html { render :action => "new" }
        format.json { render :json => { :success => false, :errors => @prelaunch_subscriber.errors } }
      end
    end
    
  end

  # # PUT /prelaunch_subscribers/1
  # # PUT /prelaunch_subscribers/1.json
  # def update
  #   @prelaunch_subscriber = PrelaunchSubscriber.find(params[:id])

    # respond_to do |format|
    #   if @prelaunch_subscriber.update_attributes(params[:prelaunch_subscriber])
    #     format.html { redirect_to @prelaunch_subscriber, :notice => 'Prelaunch subscriber was successfully updated.' }
    #     format.json { head :no_content }
    #   else
    #     format.html { render :action => "edit" }
    #     format.json { render :json => @prelaunch_subscriber.errors, :status => :unprocessable_entity }
    #   end
    # end
  # end

  # # DELETE /prelaunch_subscribers/1
  # # DELETE /prelaunch_subscribers/1.json
  # def destroy
  #   @prelaunch_subscriber = PrelaunchSubscriber.find(params[:id])
  #   @prelaunch_subscriber.destroy

  #   respond_to do |format|
  #     format.html { redirect_to prelaunch_subscribers_url }
  #     format.json { head :no_content }
  #   end
  # end
end
