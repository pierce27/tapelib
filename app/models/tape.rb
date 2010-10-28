class Tape < ActiveRecord::Base
  
 validates_numericality_of :testcase, :on => :save
 validates_numericality_of :id, :on => :save
 
 
 def self.query
    Tape.find(:all, :conditions => ["bsid like ? and bformat like ? and btype like ? and bclient like ?", "%#{params[:tape][:bsid]}%", "%#{params[:tape][:bformat]}%", "%#{params[:tape][:btype]}%", "%#{params[:tape][:bclient]}%", "%#{params[:tape][:note]}%"])
  end


  BFORMATS = ['COMMVAULT', 'LEGATO', 'TIVOLI', 'ARCSERVE', 'BACKUPEXEC', 'VERITAS NBU']
  
  BTYPES = ['FULL', 'INCREMENTAL', 'DIFFERENTIAL', 'LEVEL 1', 'LEVEL 2', 'LEVEL 3', 'LEVEL 4', 'LEVEL 5', 'LEVEL 6', 'LEVEL 7', 'LEVEL 8', 'LEVEL 9', 'USER', 'UNKNOWN']

  BCLIENTS = ['WINDOWS', 'EXCHANGE', 'LOTUS', 'NETWARE', 'SOLARIS', 'UNIX', 'LINUX','UNKNOWN']
end
