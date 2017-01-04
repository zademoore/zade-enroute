class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :load_taxonomies
  
    include Spree::Core::ControllerHelpers
    include Spree::Core::ControllerHelpers::Store
    helper Spree::BaseHelper
    
    
    def load_taxonomies
        @taxonomies = Spree::Taxonomy.includes(root: :children)
    end
  

end
