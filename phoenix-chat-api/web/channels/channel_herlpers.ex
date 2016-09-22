defmodule PhoenixChat.ChannelHerlpers do
  @moduledoc """
  Convenience functions imported in all Channels
  """

  @doc """
  Convenience function for authorization
  """
  def authorize(payload, fun, custom_authorize \\ nil) do
    check_authorization = custom_authorize || &authorized?/1
    if check_authorization.(payload) do
      fun.()
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  @doc """
  Function that determinnes authorizacion logic. IF 'true', all users will be authorizaed """

  def authorized?(payload) do
    true 
  end
end
