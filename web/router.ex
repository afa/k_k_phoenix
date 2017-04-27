defmodule KkWeb.Router do
  use KkWeb.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", KkWeb do
    pipe_through :browser # Use the default browser stack

    # get "/", PageController, :index
    get "/", GameController, :index
    get "/field", GameController, :field
    post "/setup", UserController, :update
    post "/play", GameController, :update
  end

  # Other scopes may use custom stacks.
  # scope "/api", KkWeb do
  #   pipe_through :api
  # end
end
