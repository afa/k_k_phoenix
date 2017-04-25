defmodule KkWeb.GameController do
  use KkWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def update(conn, _params) do
  end
end
