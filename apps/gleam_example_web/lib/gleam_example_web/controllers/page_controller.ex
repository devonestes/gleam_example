defmodule GleamExampleWeb.PageController do
  use GleamExampleWeb, :controller

  def index(conn, _params) do
    text(conn, :gleam_example.hello_world())
  end
end
