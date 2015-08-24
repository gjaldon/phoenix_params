defmodule PhoenixParams.PageController do
  use PhoenixParams.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
