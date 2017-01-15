defmodule UberAssistant.PageController do
  use UberAssistant.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
