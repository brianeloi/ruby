require 'test_helper'

class LocaveisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @locavei = locaveis(:one)
  end

  test "should get index" do
    get locaveis_url
    assert_response :success
  end

  test "should get new" do
    get new_locavei_url
    assert_response :success
  end

  test "should create locavei" do
    assert_difference('Locavei.count') do
      post locaveis_url, params: { locavei: { email: @locavei.email, endereco: @locavei.endereco, id: @locavei.id, nome: @locavei.nome, preco: @locavei.preco } }
    end

    assert_redirected_to locavei_url(Locavei.last)
  end

  test "should show locavei" do
    get locavei_url(@locavei)
    assert_response :success
  end

  test "should get edit" do
    get edit_locavei_url(@locavei)
    assert_response :success
  end

  test "should update locavei" do
    patch locavei_url(@locavei), params: { locavei: { email: @locavei.email, endereco: @locavei.endereco, id: @locavei.id, nome: @locavei.nome, preco: @locavei.preco } }
    assert_redirected_to locavei_url(@locavei)
  end

  test "should destroy locavei" do
    assert_difference('Locavei.count', -1) do
      delete locavei_url(@locavei)
    end

    assert_redirected_to locaveis_url
  end
end
