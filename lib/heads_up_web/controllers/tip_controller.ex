defmodule HeadsUpWeb.TipController do
  use HeadsUpWeb, :controller

  def index(conn, _params) do
    tips = HeadsUp.Tips.list_tips()
    render(conn, :index, tips: tips)
  end
end
