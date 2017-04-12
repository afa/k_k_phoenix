defmodule KkWeb.PageController do
  use KkWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
