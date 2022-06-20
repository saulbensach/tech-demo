defmodule Fetch do
  @moduledoc """
  Fetch and parse html content
  """

  @doc """
  Make a request for the given url, parses the data and return the result.
  """
  def fetch_url(url, opts) do
    :implement_me
  end

  @doc """
  Same as fetch_url except the request is handled asynchronously. To retrieve
  the result, the calling process must review its mailbox and wait for a
  message designated with the reference which will contain the response.
  """
  def fetch_url!(url, opts) do
    :implement_me
  end
end
