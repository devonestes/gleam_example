defmodule GleamExampleWeb.PageControllerTest do
  use GleamExampleWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert text_response(conn, 200) =~ "Hello, from gleam_example!"
  end
end
