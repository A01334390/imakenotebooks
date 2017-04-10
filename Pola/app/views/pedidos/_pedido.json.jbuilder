json.extract! pedido, :id, :estimado, :prioridad, :status, :cantidad, :fecha, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
