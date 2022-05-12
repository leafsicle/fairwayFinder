if Rails.env.development?
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'localhost:*'
      resource '*', :headers => :any, :methods => [:get, :post, :options]
    end
  end
end