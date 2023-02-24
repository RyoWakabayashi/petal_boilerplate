defmodule Storybook.PetalComponents.Button do
  use PhoenixStorybook.Story, :component

  @colors ~w(primary secondary info success warning danger gray pure_white white)a

  def function, do: &PetalComponents.Button.button/1

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{
          label: "Button",
          color: "primary"
        }
      },
      %VariationGroup{
        id: :colors,
        variations:
          for color <- @colors do
            %Variation{
              id: color,
              attributes: %{
                color: to_string(color),
                label: String.capitalize("#{color}")
              }
            }
          end
      },
    ]
  end
end
