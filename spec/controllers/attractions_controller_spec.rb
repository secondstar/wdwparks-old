require 'spec_helper'

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

describe AttractionsController do

  # This should return the minimal set of attributes required to create a valid
  # Attraction. As you add validations to Attraction, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all attractions as @attractions" do
      attraction = Attraction.create! valid_attributes
      get :index
      assigns(:attractions).should eq([attraction])
    end
  end

  describe "GET show" do
    it "assigns the requested attraction as @attraction" do
      attraction = Attraction.create! valid_attributes
      get :show, :id => attraction.id.to_s
      assigns(:attraction).should eq(attraction)
    end
  end

  describe "GET new" do
    it "assigns a new attraction as @attraction" do
      get :new
      assigns(:attraction).should be_a_new(Attraction)
    end
  end

  describe "GET edit" do
    it "assigns the requested attraction as @attraction" do
      attraction = Attraction.create! valid_attributes
      get :edit, :id => attraction.id.to_s
      assigns(:attraction).should eq(attraction)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Attraction" do
        expect {
          post :create, :attraction => valid_attributes
        }.to change(Attraction, :count).by(1)
      end

      it "assigns a newly created attraction as @attraction" do
        post :create, :attraction => valid_attributes
        assigns(:attraction).should be_a(Attraction)
        assigns(:attraction).should be_persisted
      end

      it "redirects to the created attraction" do
        post :create, :attraction => valid_attributes
        response.should redirect_to(Attraction.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved attraction as @attraction" do
        # Trigger the behavior that occurs when invalid params are submitted
        Attraction.any_instance.stub(:save).and_return(false)
        post :create, :attraction => {}
        assigns(:attraction).should be_a_new(Attraction)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Attraction.any_instance.stub(:save).and_return(false)
        post :create, :attraction => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested attraction" do
        attraction = Attraction.create! valid_attributes
        # Assuming there are no other attractions in the database, this
        # specifies that the Attraction created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Attraction.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => attraction.id, :attraction => {'these' => 'params'}
      end

      it "assigns the requested attraction as @attraction" do
        attraction = Attraction.create! valid_attributes
        put :update, :id => attraction.id, :attraction => valid_attributes
        assigns(:attraction).should eq(attraction)
      end

      it "redirects to the attraction" do
        attraction = Attraction.create! valid_attributes
        put :update, :id => attraction.id, :attraction => valid_attributes
        response.should redirect_to(attraction)
      end
    end

    describe "with invalid params" do
      it "assigns the attraction as @attraction" do
        attraction = Attraction.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Attraction.any_instance.stub(:save).and_return(false)
        put :update, :id => attraction.id.to_s, :attraction => {}
        assigns(:attraction).should eq(attraction)
      end

      it "re-renders the 'edit' template" do
        attraction = Attraction.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Attraction.any_instance.stub(:save).and_return(false)
        put :update, :id => attraction.id.to_s, :attraction => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested attraction" do
      attraction = Attraction.create! valid_attributes
      expect {
        delete :destroy, :id => attraction.id.to_s
      }.to change(Attraction, :count).by(-1)
    end

    it "redirects to the attractions list" do
      attraction = Attraction.create! valid_attributes
      delete :destroy, :id => attraction.id.to_s
      response.should redirect_to(attractions_url)
    end
  end

end
