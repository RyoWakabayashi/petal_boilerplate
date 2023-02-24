defmodule Storybook.PetalComponents.SimpleModal do
  use PhoenixStorybook.Story, :component

  def function, do: &PetalComponents.SimpleModal.modal/1

  def imports, do: [
    {PetalComponents.Button, [button: 1]},
    {PetalComponents.SimpleModal, [hide_modal: 0, show_modal: 0]}
  ]

  def template do
    """
    <.button phx-click={show_modal()} lsb-code-hidden>
      Open Modal
    </.button>
    <.lsb-variation/>
    """
  end

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{
          title: "Modal"
        },
        slots: [
          "Hello Modal",
          """
          <div class="flex justify-end">
            <.button phx-click={hide_modal()}>
              Close
            </.button>
          </div>
          """
        ]
      }
    ]
  end
end
