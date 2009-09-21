class ImageController < ApplicationController
  active_scaffold :images do |config|
     # Titolo tabella
    config.label = "Nuova Immagine"

    # Ordinamento colonne
    config.columns = [:name,:file]
    #config.create.columns = [:name,:email,:tel_number,:tag, :newsletter_categories, :confirmed]
    #config.update.columns = [:name,:email,:tel_number,:tag, :newsletter_categories, :confirmed]
    #config.show.columns = [:name, :email,:tel_number,:tag, :newsletter_categories, :confirmed,:created_at,:code]

    # Traduzioni colonne
#    config.columns[:name].label = "Nome"
#    config.columns[:email].label = "Email"
#    config.columns[:tel_number].label = "Numero di Telefono"
#    config.columns[:code].label = "Codice di verifica"
#    config.columns[:confirmed].label = "Confermato"
    #config.columns[:errors_at_delivery].label = "Numero di invii falliti"
    #config.columns[:newsletter_categories].form_ui = :select
    #config.columns[:confirmed].form_ui = :checkbox


    # Configurazione azioni
    #config.actions = [:live_search, :list, :show,:nested, :update, :create, :delete, :subform]
    #config.action_links.add 'import_csv', :label => 'Importa CSV'

  end
end
