Kindergarten::App.controllers :groups do
  layout :layout
  
  get :index do
    @group = Group.find(params[:id])
    render :index
  end

  get :new do

  end

  post :create do

  end

  get :show, :map => 'groups/:id' do

  end

  get :edit, :map => 'groups/:id/edit' do

  end

  put :update, :map => 'groups/:id' do

  end

  delete :destroy, :map => 'groups/:id' do

  end

end
