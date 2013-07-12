module ApplicationHelper

  def get_name(user_id)

    @user_name = User.where("id = :id ", {:id => user_id.to_i})
    @user_name = @user_name[0][:name] if @user_name.present?


  end

  def get_offer(offer_id)

    @offer = Offer.where("id = :id ", {:id => offer_id.to_i})
    @offer = @offer[0][:name] if @offer.present?

  end
  
  def prettify_float(float)
    float.to_i == float ? float.to_i : float
  end
  
  def resource_name
      :user
    end

    def resource
      @resource ||= User.new
    end

    def devise_mapping
      @devise_mapping ||= Devise.mappings[:user]
    end

end

