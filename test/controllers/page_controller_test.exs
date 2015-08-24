defmodule PhoenixParams.PageControllerTest do
  use PhoenixParams.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
