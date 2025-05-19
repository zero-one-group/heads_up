defmodule HeadsUpWeb.TipController do
  use HeadsUpWeb, :controller

  def index(conn, _params) do
    emojis = ~w(💚 💜 💙) |> Enum.random() |> String.duplicate(5)
    tips = HeadsUp.Tips.list_tips()
    render(conn, :index, emojis: emojis, tips: tips)
  end

  def show(conn, %{"id" => id}) do
    tip = HeadsUp.Tips.get_tip(id)
    render(conn, :show, tip: tip)
  end
end
