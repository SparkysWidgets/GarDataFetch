class BobsController < ApplicationController
  # GET /bobs
  # GET /bobs.json
  def index
    @bobs = Bob.paginate(:page => params[:page], :order => 'created_at DESC',:per_page => 30)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bobs }
    end
  end

  # GET /bobs/1
  # GET /bobs/1.json
  def show
    @bob = Bob.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bob }
    end
  end

  # GET /bobs/new
  # GET /bobs/new.json
  def new
    @bob = Bob.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bob }
    end
  end

  # GET /bobs/1/edit
  def edit
    @bob = Bob.find(params[:id])
  end

  # POST /bobs
  # POST /bobs.json
  def create
    @bob = Bob.new(params[:bob])

    respond_to do |format|
      if @bob.save
        format.html { redirect_to @bob, notice: 'Bob was successfully created.' }
        format.json { render json: @bob, status: :created, location: @bob }
      else
        format.html { render action: "new" }
        format.json { render json: @bob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bobs/1
  # PUT /bobs/1.json
  def update
    @bob = Bob.find(params[:id])

    respond_to do |format|
      if @bob.update_attributes(params[:bob])
        format.html { redirect_to @bob, notice: 'Bob was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bobs/1
  # DELETE /bobs/1.json
  def destroy
    @bob = Bob.find(params[:id])
    @bob.destroy

    respond_to do |format|
      format.html { redirect_to bobs_url }
      format.json { head :no_content }
    end
  end
end
