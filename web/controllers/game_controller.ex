defmodule KkWeb.GameController do
  use KkWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def update(conn, params) do
    redirect conn, to: '/'
  end

  def field(conn, _params) do
    conn
    |> send_file(200, "priv/static/images/phoenix.png", format: "png", width: "250px", height: "250px")
  end
end
