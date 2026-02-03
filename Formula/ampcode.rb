class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770077053-g6c647e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770077053-g6c647e/amp-darwin-arm64"
      sha256 "7c5ccc7f26a492d315c1ea8aef3be09cc1f97376b7fe0fc132a33be96af2032a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770077053-g6c647e/amp-darwin-x64"
      sha256 "3bb89249eecb76f2113c2618085fe4ad0b8a5c1b2f39aea79b14a1c36743db53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770077053-g6c647e/amp-linux-arm64"
      sha256 "d6fd5ff3345d79c088f03f7317256dde4735e2363e43b2da44c98faa64f94e0a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770077053-g6c647e/amp-linux-x64"
      sha256 "14a5404c4b9c325382e8b002ef7272a464b131155053a8d1eb2578597c80b7f7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
