defmodule Storybook.CoreComponents.Flash do
  use PhoenixStorybook.Story, :component
  alias Elixir.PetalBoilerplateWeb.CoreComponents

  def function, do: &CoreComponents.flash/1
  def imports, do: [
    {PetalComponents.Button, [button: 1]},
    {CoreComponents, [show: 1]}
  ]

  def template do
    """
    <.button phx-click={show("#:variation_id")} lsb-code-hidden>
      Open flash
    </.button>
    <.lsb-variation/>
    """
  end

  def variations do
    [
      %Variation{
        id: :info_no_title,
        attributes: %{
          kind: :info,
          autoshow: false
        },
        slots: ["Info message"]
      },
      %Variation{
        id: :error_with_title,
        attributes: %{
          kind: :error,
          autoshow: false,
          title: "Flash title"
        },
        slots: ["Error message"]
      },
      %Variation{
        id: :no_close_button,
        attributes: %{
          kind: :info,
          autoshow: false,
          close: false
        },
        slots: ["Info message"]
      }
    ]
  end
end
