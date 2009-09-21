class AlbumController < ApplicationController
  active_scaffold :albums  do |config|
     # Titolo tabella
    config.label = "Nuovo Album"

    # Ordinamento colonne
    config.columns = [:name,:archivie]
  end
end
