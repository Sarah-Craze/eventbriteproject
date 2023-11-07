class SessionsController < Devise::SessionsController
    include Devise::Controllers::Helpers
  
    def new
      self.resource = build_resource
      store_location_for(resource, params[:redirect_to]) if params[:redirect_to]
      super
    end
  
    private
  
    def build_resource
      resource_class.new(sign_in_params)
    end
  end
  
