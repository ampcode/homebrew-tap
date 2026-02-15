class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771130198-g6c163c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771130198-g6c163c/amp-darwin-arm64"
      sha256 "dd1704a403a2535e28d801de7e64a46eb841f97a9e69072bc69f915fe81a3e79"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771130198-g6c163c/amp-darwin-x64"
      sha256 "0b2422db151f44452f5c2330bbd74b5e323b9735b1a370a120321cacf61f623e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771130198-g6c163c/amp-linux-arm64"
      sha256 "1d3df0c786040540e3411ad855fbc8d71f6610db990344c4dba7c59d3bd6481b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771130198-g6c163c/amp-linux-x64"
      sha256 "cb324e45a59e8206e3b00c00f23ed0ecf3643cc226e2070539e1f74f2d3ef13c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
