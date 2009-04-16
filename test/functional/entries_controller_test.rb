require 'test_helper'

class EntriesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Entry.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Entry.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Entry.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to entry_url(assigns(:entry))
  end
  
  def test_edit
    get :edit, :id => Entry.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Entry.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Entry.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Entry.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Entry.first
    assert_redirected_to entry_url(assigns(:entry))
  end
  
  def test_destroy
    entry = Entry.first
    delete :destroy, :id => entry
    assert_redirected_to entries_url
    assert !Entry.exists?(entry.id)
  end
end
