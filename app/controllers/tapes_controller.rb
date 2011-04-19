class TapesController < ApplicationController


  # GET /tapes/1
  # GET /tapes/1.xml
  def show
    @tape = Tape.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tape }
    end
    
  end




  
  #Display search page.
  def search
	    @tapes = Tape.new
  end  
   
      

  #Display search
  def results
    
  @tapes = Tape.query(params)
  @backupsets = Tape.backupsets(params)   
   respond_to do |format| 
      format.html
      format.xml { render :xml => @tapes }
     end 
   end



  # GET /tapes/new
  # GET /tapes/new.xml
  def new
    @tape = Tape.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tape }
    end
  end




  # GET /tapes/1/edit
  def edit
    @tape = Tape.find(params[:id])
  end

  
  def edittape
    @tape = Tape.find(params[:id])
  end




  # POST /tapes
  # POST /tapes.xml
  def create
    @tape = Tape.new(params[:tape])

    respond_to do |format|
      if @tape.save
        flash[:notice] = 'Tape was successfully created.'
        format.html { redirect_to(@tape) }
        format.xml  { render :xml => @tape, :status => :created, :location => @tape }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tape.errors, :status => :unprocessable_entity }
      end
    end
  end

 

 def updatetape
   @tapes = Tape.find(:all, :order => :voltag, :conditions => ["voltag like ?", "%#{params[:tape][:voltag]}%"])

   @tapes.each do |tape|
	tape.update_attributes(params[:tape])
   end

	flash[:notice] = 'Tape was successfully updated.'
	redirect_to "/tapes/search"
 end



  # PUT /tapes/1
  # PUT /tapes/1.xml
  def update
    @tape = Tape.find(params[:id])

    respond_to do |format|
      if @tape.update_attributes(params[:tape])
        flash[:notice] = 'Tape was successfully updated.'
        format.html { redirect_to(@tape) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tape.errors, :status => :unprocessable_entity }
      end
    end
  end






  # DELETE /tapes/1
  # DELETE /tapes/1.xml
  def destroy
    @tape = Tape.find(params[:id])
    @tape.destroy

    respond_to do |format|
      format.html { redirect_to(tapes_url) }
      format.xml  { head :ok }
    end
  end
end
