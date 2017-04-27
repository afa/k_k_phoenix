defmodule KkWeb.UserController do
  use KkWeb.Web, :controller

  def update(conn, _params) do
    redirect conn, to: game_path(conn, :index)
  end
end

