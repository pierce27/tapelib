class Tape < ActiveRecord::Base
  
 validates_numericality_of :testcase, :on => :save
 validates_presence_of :bsid, :on => :save
 validates_presence_of :server, :on => :save
 validates_presence_of :bformat, :on => :save 
 validates_presence_of :btype, :on => :save
 validates_presence_of :bclient, :on => :save
 validates_presence_of :voltag, :on => :save
 
 def self.query(params)
   self.find(:all, :group => :voltag,   :order => :voltag, :conditions => ["id like ? and  bsid like ? and server like ? and voltag like ? and bformat like ? and btype like ? and bclient like ? and note like ? and testcase like ? ","%#{params[:tape][:id]}%", "%#{params[:tape][:bsid]}%", "%#{params[:tape][:server]}%", "%#{params[:tape][:voltag]}%", "%#{params[:tape][:bformat]}%", "%#{params[:tape][:btype]}%", "%#{params[:tape][:bclient]}%", "%#{params[:tape][:note]}%", "%#{params[:tape][:testcase]}%"])
 end

 def self.backupsets(params)
       self.find(:all, :order => :voltag,  :conditions => ["id like ? and  bsid like ? and server like ? and voltag like ? and bformat like ? and btype like ? and bclient like ? and note like ? and testcase like ? ","%#{params[:tape][:id]}%", "%#{params[:tape][:bsid]}%", "%#{params[:tape][:server]}%", "%#{params[:tape][:voltag]}%", "%#{params[:tape][:bformat]}%", "%#{params[:tape][:btype]}%", "%#{params[:tape][:bclient]}%", "%#{params[:tape][:note]}%", "%#{params[:tape][:testcase]}%"])
 end

  BFORMATS = ['COMMVAULT', 'LEGATO', 'TIVOLI', 'ARCSERVE', 'MTF', 'NETBACKUP', 'ULTRABAC']
  
  BTYPES = ['FULL', 'INCREMENTAL', 'DIFFERENTIAL', 'LEVEL 1', 'LEVEL 2', 'LEVEL 3', 'LEVEL 4', 'LEVEL 5', 'LEVEL 6', 'LEVEL 7', 'LEVEL 8', 'LEVEL 9', 'USER', 'UNKNOWN']

  BCLIENTS = ['WINDOWS', 'EXCHANGE', 'LOTUS', 'NETWARE', 'SOLARIS', 'UNIX', 'LINUX','UNKNOWN']
end
