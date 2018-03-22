json.extract! paiement, :id, :roof, :plafond, :mode, :adress_1, :adress_2, :cp, :city, :country, :created_at, :updated_at
json.url paiement_url(paiement, format: :json)
