Kindergarten::App.controllers :toddlers do
  layout :layout 
  
  before :edit, :show, :destroy, :update do
    @toddler = Toddler.find(params[:id])
  end

  get :index do
    @toddlers = Toddler.includes(:group).all
    render 'index'
  end

  get :new do
    @toddler = Toddler.new
    render 'new'
  end

  post :create do
    t = Toddler.new(params[:toddler])
    if t.save 
      redirect url_for(:toddlers, :index)
    else 
      flash[:message] = "Didn't work..."
      redirect url_for(:toddlers, :new)
    end

  end

  get :show, :map => 'toddlers/:id' do
    render 'show'
  end

  get :edit, :map => 'toddlers/:id/edit' do
    render 'edit'
  end

  put :update, :map => 'toddlers/:id' do
    if @toddler.update(params[:toddler]) 
      redirect url_for(:toddlers, :show, :id => @toddler.id)
    else 
      flash[:message] = "Didn't work..."
      redirect url_for(:toddlers, :edit, :id => @toddler.id)
    end
  end

  delete :destroy, :map => 'toddlers/:id' do
    @toddler.delete
    redirect url_for(:toddlers, :index)
  end

end
