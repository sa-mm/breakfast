defmodule Breakfast.Field do
  @moduledoc false
  use TypedStruct

  @type type :: atom() | {:cereal, module()} | {atom(), term()}

  typedstruct do
    field :mod, atom()
    field :name, atom()
    field :type, type()
    field :fetcher, atom()
    field :caster, atom()
    field :validator, atom()
    field :default, {:ok, term()} | :error
  end
end
