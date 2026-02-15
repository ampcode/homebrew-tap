class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771113779-g6c163c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771113779-g6c163c/amp-darwin-arm64"
      sha256 "389865c75936587130cd14f9b39a3a4ae3ebea982c8a3534a6893abb24eb63d0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771113779-g6c163c/amp-darwin-x64"
      sha256 "b2ce6d9f4cd0a61695cc2a8573da659fa12554478263a4aa1f24173b3ed06ee7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771113779-g6c163c/amp-linux-arm64"
      sha256 "734253a3d877cab65700d37e25c498bd2d023d1ba8c0977a41046f3baa085f0f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771113779-g6c163c/amp-linux-x64"
      sha256 "0b0ed54c21f42057ab69d6187e18d51c9d0ac9cf790192d1559e64a98f243762"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
