defmodule LiveCounterWeb.PageController do
  use LiveCounterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
