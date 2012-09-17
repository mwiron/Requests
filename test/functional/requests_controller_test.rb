require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post :create, request: { abnahme_fachlich_gkv: @request.abnahme_fachlich_gkv, abnahme_technisch_itsg: @request.abnahme_technisch_itsg, abnahme_teradata: @request.abnahme_teradata, analyse_und_design: @request.analyse_und_design, fachl_freigabe_implementierung: @request.fachl_freigabe_implementierung, fachl_freigabe_implementierung: @request.fachl_freigabe_implementierung, fachl_freigabe_implementierung: @request.fachl_freigabe_implementierung, gkv_fachlich: @request.gkv_fachlich, gkv_technisch: @request.gkv_technisch, itsg_fachlich: @request.itsg_fachlich, itsg_teschnisch: @request.itsg_teschnisch, kostenstelle: @request.kostenstelle, migration_produktion: @request.migration_produktion, request_beschreibung: @request.request_beschreibung, request_nr: @request.request_nr, request_version: @request.request_version, sonderstatus: @request.sonderstatus, teradata_fachlich: @request.teradata_fachlich, teradata_technisch: @request.teradata_technisch, ziel_migration: @request.ziel_migration }
    end

    assert_redirected_to request_path(assigns(:request))
  end

  test "should show request" do
    get :show, id: @request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request
    assert_response :success
  end

  test "should update request" do
    put :update, id: @request, request: { abnahme_fachlich_gkv: @request.abnahme_fachlich_gkv, abnahme_technisch_itsg: @request.abnahme_technisch_itsg, abnahme_teradata: @request.abnahme_teradata, analyse_und_design: @request.analyse_und_design, fachl_freigabe_implementierung: @request.fachl_freigabe_implementierung, fachl_freigabe_implementierung: @request.fachl_freigabe_implementierung, fachl_freigabe_implementierung: @request.fachl_freigabe_implementierung, gkv_fachlich: @request.gkv_fachlich, gkv_technisch: @request.gkv_technisch, itsg_fachlich: @request.itsg_fachlich, itsg_teschnisch: @request.itsg_teschnisch, kostenstelle: @request.kostenstelle, migration_produktion: @request.migration_produktion, request_beschreibung: @request.request_beschreibung, request_nr: @request.request_nr, request_version: @request.request_version, sonderstatus: @request.sonderstatus, teradata_fachlich: @request.teradata_fachlich, teradata_technisch: @request.teradata_technisch, ziel_migration: @request.ziel_migration }
    assert_redirected_to request_path(assigns(:request))
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete :destroy, id: @request
    end

    assert_redirected_to requests_path
  end
end
