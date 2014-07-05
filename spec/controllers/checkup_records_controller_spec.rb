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

RSpec.describe CheckupRecordsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # CheckupRecord. As you add validations to CheckupRecord, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CheckupRecordsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all checkup_records as @checkup_records" do
      checkup_record = CheckupRecord.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:checkup_records)).to eq([checkup_record])
    end
  end

  describe "GET show" do
    it "assigns the requested checkup_record as @checkup_record" do
      checkup_record = CheckupRecord.create! valid_attributes
      get :show, {:id => checkup_record.to_param}, valid_session
      expect(assigns(:checkup_record)).to eq(checkup_record)
    end
  end

  describe "GET new" do
    it "assigns a new checkup_record as @checkup_record" do
      get :new, {}, valid_session
      expect(assigns(:checkup_record)).to be_a_new(CheckupRecord)
    end
  end

  describe "GET edit" do
    it "assigns the requested checkup_record as @checkup_record" do
      checkup_record = CheckupRecord.create! valid_attributes
      get :edit, {:id => checkup_record.to_param}, valid_session
      expect(assigns(:checkup_record)).to eq(checkup_record)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CheckupRecord" do
        expect {
          post :create, {:checkup_record => valid_attributes}, valid_session
        }.to change(CheckupRecord, :count).by(1)
      end

      it "assigns a newly created checkup_record as @checkup_record" do
        post :create, {:checkup_record => valid_attributes}, valid_session
        expect(assigns(:checkup_record)).to be_a(CheckupRecord)
        expect(assigns(:checkup_record)).to be_persisted
      end

      it "redirects to the created checkup_record" do
        post :create, {:checkup_record => valid_attributes}, valid_session
        expect(response).to redirect_to(CheckupRecord.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved checkup_record as @checkup_record" do
        post :create, {:checkup_record => invalid_attributes}, valid_session
        expect(assigns(:checkup_record)).to be_a_new(CheckupRecord)
      end

      it "re-renders the 'new' template" do
        post :create, {:checkup_record => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested checkup_record" do
        checkup_record = CheckupRecord.create! valid_attributes
        put :update, {:id => checkup_record.to_param, :checkup_record => new_attributes}, valid_session
        checkup_record.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested checkup_record as @checkup_record" do
        checkup_record = CheckupRecord.create! valid_attributes
        put :update, {:id => checkup_record.to_param, :checkup_record => valid_attributes}, valid_session
        expect(assigns(:checkup_record)).to eq(checkup_record)
      end

      it "redirects to the checkup_record" do
        checkup_record = CheckupRecord.create! valid_attributes
        put :update, {:id => checkup_record.to_param, :checkup_record => valid_attributes}, valid_session
        expect(response).to redirect_to(checkup_record)
      end
    end

    describe "with invalid params" do
      it "assigns the checkup_record as @checkup_record" do
        checkup_record = CheckupRecord.create! valid_attributes
        put :update, {:id => checkup_record.to_param, :checkup_record => invalid_attributes}, valid_session
        expect(assigns(:checkup_record)).to eq(checkup_record)
      end

      it "re-renders the 'edit' template" do
        checkup_record = CheckupRecord.create! valid_attributes
        put :update, {:id => checkup_record.to_param, :checkup_record => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested checkup_record" do
      checkup_record = CheckupRecord.create! valid_attributes
      expect {
        delete :destroy, {:id => checkup_record.to_param}, valid_session
      }.to change(CheckupRecord, :count).by(-1)
    end

    it "redirects to the checkup_records list" do
      checkup_record = CheckupRecord.create! valid_attributes
      delete :destroy, {:id => checkup_record.to_param}, valid_session
      expect(response).to redirect_to(checkup_records_url)
    end
  end

end