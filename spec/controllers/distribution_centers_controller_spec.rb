require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe DistributionCentersController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # DistributionCenter. As you add validations to DistributionCenter, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DistributionCentersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all distribution_centers as @distribution_centers" do
      distribution_center = DistributionCenter.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:distribution_centers)).to eq([distribution_center])
    end
  end

  describe "GET show" do
    it "assigns the requested distribution_center as @distribution_center" do
      distribution_center = DistributionCenter.create! valid_attributes
      get :show, {:id => distribution_center.to_param}, valid_session
      expect(assigns(:distribution_center)).to eq(distribution_center)
    end
  end

  describe "GET new" do
    it "assigns a new distribution_center as @distribution_center" do
      get :new, {}, valid_session
      expect(assigns(:distribution_center)).to be_a_new(DistributionCenter)
    end
  end

  describe "GET edit" do
    it "assigns the requested distribution_center as @distribution_center" do
      distribution_center = DistributionCenter.create! valid_attributes
      get :edit, {:id => distribution_center.to_param}, valid_session
      expect(assigns(:distribution_center)).to eq(distribution_center)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new DistributionCenter" do
        expect {
          post :create, {:distribution_center => valid_attributes}, valid_session
        }.to change(DistributionCenter, :count).by(1)
      end

      it "assigns a newly created distribution_center as @distribution_center" do
        post :create, {:distribution_center => valid_attributes}, valid_session
        expect(assigns(:distribution_center)).to be_a(DistributionCenter)
        expect(assigns(:distribution_center)).to be_persisted
      end

      it "redirects to the created distribution_center" do
        post :create, {:distribution_center => valid_attributes}, valid_session
        expect(response).to redirect_to(DistributionCenter.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved distribution_center as @distribution_center" do
        post :create, {:distribution_center => invalid_attributes}, valid_session
        expect(assigns(:distribution_center)).to be_a_new(DistributionCenter)
      end

      it "re-renders the 'new' template" do
        post :create, {:distribution_center => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested distribution_center" do
        distribution_center = DistributionCenter.create! valid_attributes
        put :update, {:id => distribution_center.to_param, :distribution_center => new_attributes}, valid_session
        distribution_center.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested distribution_center as @distribution_center" do
        distribution_center = DistributionCenter.create! valid_attributes
        put :update, {:id => distribution_center.to_param, :distribution_center => valid_attributes}, valid_session
        expect(assigns(:distribution_center)).to eq(distribution_center)
      end

      it "redirects to the distribution_center" do
        distribution_center = DistributionCenter.create! valid_attributes
        put :update, {:id => distribution_center.to_param, :distribution_center => valid_attributes}, valid_session
        expect(response).to redirect_to(distribution_center)
      end
    end

    describe "with invalid params" do
      it "assigns the distribution_center as @distribution_center" do
        distribution_center = DistributionCenter.create! valid_attributes
        put :update, {:id => distribution_center.to_param, :distribution_center => invalid_attributes}, valid_session
        expect(assigns(:distribution_center)).to eq(distribution_center)
      end

      it "re-renders the 'edit' template" do
        distribution_center = DistributionCenter.create! valid_attributes
        put :update, {:id => distribution_center.to_param, :distribution_center => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested distribution_center" do
      distribution_center = DistributionCenter.create! valid_attributes
      expect {
        delete :destroy, {:id => distribution_center.to_param}, valid_session
      }.to change(DistributionCenter, :count).by(-1)
    end

    it "redirects to the distribution_centers list" do
      distribution_center = DistributionCenter.create! valid_attributes
      delete :destroy, {:id => distribution_center.to_param}, valid_session
      expect(response).to redirect_to(distribution_centers_url)
    end
  end

end