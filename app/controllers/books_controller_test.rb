class BooksControllerTest < ActionController::TestCase
    test 'get index' do
      get :index

      assert_response :success
      assert_template :index
      assert_not_nil assigns(:books)
    end

    test 'book create' do
        params = {
            title: "Another Title",
            description: "Can we repeat the same text?",
            author: "Jane Doe",
            status: 'draft',
            created_at: DateTime.now,
            updated_at: DateTime.now
        }
        book items_url, params: {book: params}

        assert_response :success
    end
end