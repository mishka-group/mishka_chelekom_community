defmodule CommunityDemo.Repo do
  use Ecto.Repo,
    otp_app: :community_demo,
    adapter: Ecto.Adapters.Postgres
end
