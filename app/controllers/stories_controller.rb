class StoriesController < InheritedResources::Base
  respond_to :json  
  def collection
    end_of_association_chain.order("created_at DESC").page(params[:page] || 1)
  end
  
  
  def index
    super do |format|
      format.json{ 
        render "stories/index", :locals => {:stories => collection}
        return
      }
    end
  end
  
  def show
    super do |format|
      format.json{ 
        render "stories/show", :locals => {:story => resource}
        return
      }
    end
  end
end