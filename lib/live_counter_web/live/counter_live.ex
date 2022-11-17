defmodule LiveCounterWeb.CounterLive do
  use LiveCounterWeb, :live_view

  def mount(params, _session, socket) do
    {initial_counter, _rest} = Integer.parse(params["initial_counter"])

    {:ok,
      socket
      |> assign(:counter, initial_counter)
    }
  end

  def handle_event("inc", params, socket) do
    {int, _rest} = Integer.parse(params["amount"])

    {:noreply,
      socket
      |> assign(:counter, socket.assigns.counter + int)
    }
  end

  def render(assigns) do
    ~H"""
      <div>
        <p>Nosso contador tem valor de: <%= @counter %></p>

        <button phx-click="inc" phx-value-amount="1">+1</button>
        <button phx-click="inc" phx-value-amount="10">+10</button>
        <button phx-click="inc" phx-value-amount="100">+100</button>
        <button phx-click="inc" phx-value-amount="-1">-1</button>
      </div>
    """
  end
end
