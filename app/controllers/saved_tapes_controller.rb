class SavedTapesController < ApplicationController
  # GET /saved_tapes
  # GET /saved_tapes.xml
  def mytapes
    @saved_tapes = SavedTape.find(:all, :conditions => ["user like ?", "#{session[:user_id]}"])

     respond_to do |format|
      format.html # index.html.erb
       format.xml  { render :xml => @saved_tapes }
    end
  end

  def theirtapes
   @saved_tapes = SavedTape.find(:all, :conditions => ["user like ?", "#{params[:user]}"])

    respond_to do |format|
     format.html # index.html.erb
      format.xml  { render :xml => @saved_tapes }
   end
  end


  
  def yourtape
    @yourtapes = Tape.find(:all, :conditions => ["voltag like ?", "#{params[:voltag]}"])
    
    respond_to do |format|
      format.html
      format.xml { render :xml => @yourtape }
     end
   end




  # GET /saved_tapes/1
  # GET /saved_tapes/1.xml
  def show
    @saved_tape = SavedTape.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @saved_tape }
    end
  end

  # GET /saved_tapes/new
  # GET /saved_tapes/new.xml
  def new
    @saved_tape = SavedTape.new
    
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @saved_tape }
    end
  end

  # GET /saved_tapes/1/edit
  def edit
    @saved_tape = SavedTape.find(params[:id])
  end

  # POST /saved_tapes
  # POST /saved_tapes.xml
  def index
    @saved_tape = SavedTape.new
    @saved_tape.user = session[:user_id]
    @saved_tape.voltag = params[:voltag]

    respond_to do |format|
      if @saved_tape.save
        flash[:notice] = 'SavedTape was successfully created.'
        format.html { redirect_to(@saved_tape) }
        format.xml  { render :xml => @saved_tape, :status => :created, :location => @saved_tape }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @saved_tape.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /saved_tapes/1
  # PUT /saved_tapes/1.xml
  def update
    @saved_tape = SavedTape.find(params[:id])

    respond_to do |format|
      if @saved_tape.update_attributes(params[:saved_tape])
        flash[:notice] = 'SavedTape was successfully updated.'
        format.html { redirect_to(@saved_tape) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @saved_tape.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_tapes/1
  # DELETE /saved_tapes/1.xml
  def destroy
    @saved_tape = SavedTape.find(params[:id])
    @saved_tape.destroy

    respond_to do |format|
      format.html { redirect_to :action => 'mytapes' }
      format.xml  { head :ok }
    end
  end
end
