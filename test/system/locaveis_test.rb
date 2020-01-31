require "application_system_test_case"

class LocaveisTest < ApplicationSystemTestCase
  setup do
    @locavei = locaveis(:one)
  end

  test "visiting the index" do
    visit locaveis_url
    assert_selector "h1", text: "Locaveis"
  end

  test "creating a Locavei" do
    visit locaveis_url
    click_on "New Locavei"

    fill_in "Email", with: @locavei.email
    fill_in "Endereco", with: @locavei.endereco
    fill_in "Id", with: @locavei.id
    fill_in "Nome", with: @locavei.nome
    fill_in "Preco", with: @locavei.preco
    click_on "Create Locavei"

    assert_text "Locavei was successfully created"
    click_on "Back"
  end

  test "updating a Locavei" do
    visit locaveis_url
    click_on "Edit", match: :first

    fill_in "Email", with: @locavei.email
    fill_in "Endereco", with: @locavei.endereco
    fill_in "Id", with: @locavei.id
    fill_in "Nome", with: @locavei.nome
    fill_in "Preco", with: @locavei.preco
    click_on "Update Locavei"

    assert_text "Locavei was successfully updated"
    click_on "Back"
  end

  test "destroying a Locavei" do
    visit locaveis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Locavei was successfully destroyed"
  end
end
