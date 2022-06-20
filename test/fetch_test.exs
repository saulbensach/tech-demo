defmodule FetchTest do
  use ExUnit.Case
  alias Fetch.Result

  doctest Fetch

  @example_page """
  <html>
  <body>
    <img src="one.png" />
    <img src="two.png" />
    <a href="link_one_url">Link One</a>
    <a href="link_two_url">Link Two</a>
  </body>
  </html>
  """

  @expected_result %Result{
    assets: [
      "<img src=\"one.png\" />",
      "<img src=\"two.png\" />"
    ],
    links: [
      "<a href=\"link_one_url\">Link One</a>",
      "<a href=\"link_two_url\">Link Two</a>"
    ]
  }
end
