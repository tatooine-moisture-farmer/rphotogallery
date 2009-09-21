class Album < ActiveRecord::Base
  has_many :images
  file_column :archivie
  after_create :unzip_albums

  def unzip_albums  #qua' meglio pensarci un po' di piu
    puts "Ciao asosdas #{archivie}"
    archivie_name=((rand*10000).to_i).to_s
    Rails.logger.error("#{archivie.inspect}")
    Unzip.unzip_file(archivie,"./tmp/album_tmp/#{archivie_name}")
    ff=File.open(archivie)
     #(ff.path.split"/").last.split(".").first
    ff.close
    imgs=Dir["./tmp/album_tmp/#{archivie_name}/*/*.jpg"]+Dir["./tmp/album_tmp/#{archivie_name}/*/*.JPG"]+Dir["./tmp/album_tmp/#{archivie_name}/*/*.gif"]
    this_a=Album.find_by_id(id)
    imgs.each do |f_img|
    i=Image.new
    f=File.open(f_img)
    i.file=f
    i.album=this_a
    i.save
    end
    #unless @archivie.blank?
    #scomprimi album in tmp
    #per ogni immagine(*.jpg)
    ##crea immagine e associala all'album
  end


end
