require 'test_helper'

class PagesHasArticlesControllerTest < ActionController::TestCase
  setup do
    @pages_has_article = pages_has_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pages_has_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pages_has_article" do
    assert_difference('PagesHasArticle.count') do
      post :create, pages_has_article: { articles_id: @pages_has_article.articles_id, pages_id: @pages_has_article.pages_id, pages_issues_id: @pages_has_article.pages_issues_id, pages_issues_journals_id: @pages_has_article.pages_issues_journals_id, pages_templates_id: @pages_has_article.pages_templates_id }
    end

    assert_redirected_to pages_has_article_path(assigns(:pages_has_article))
  end

  test "should show pages_has_article" do
    get :show, id: @pages_has_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pages_has_article
    assert_response :success
  end

  test "should update pages_has_article" do
    put :update, id: @pages_has_article, pages_has_article: { articles_id: @pages_has_article.articles_id, pages_id: @pages_has_article.pages_id, pages_issues_id: @pages_has_article.pages_issues_id, pages_issues_journals_id: @pages_has_article.pages_issues_journals_id, pages_templates_id: @pages_has_article.pages_templates_id }
    assert_redirected_to pages_has_article_path(assigns(:pages_has_article))
  end

  test "should destroy pages_has_article" do
    assert_difference('PagesHasArticle.count', -1) do
      delete :destroy, id: @pages_has_article
    end

    assert_redirected_to pages_has_articles_path
  end
end
