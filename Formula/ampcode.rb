class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769687516-g9f866a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769687516-g9f866a/amp-darwin-arm64"
      sha256 "c7258a0ecb86391e0d871fe8de82959f05231a36faa92bc65aa93158681fed57"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769687516-g9f866a/amp-darwin-x64"
      sha256 "237fa441ad48c8ce07c4189f1fdd637c228049694110353119a08a14834f2b19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769687516-g9f866a/amp-linux-arm64"
      sha256 "16b7c5905632efd45ab44ebd98683f7e23267e58560bbda1ec9824a5f0c6dcd5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769687516-g9f866a/amp-linux-x64"
      sha256 "bd6e9af22f8b3f111bc4b8d97a40ba1f364c954482dfbf47b1a9e37aa331dd64"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
