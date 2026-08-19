class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787175608-g1d824d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787175608-g1d824d/amp-darwin-arm64"
      sha256 "2be3a428a7e43725c37528961f87c9bd13db6402e8c383532a6eeeeedc605cc4"
    else
      url "https://static.ampcode.com/cli/0.0.1787175608-g1d824d/amp-darwin-x64"
      sha256 "b21a1d4b183e1b191acb16c537989df744ff870142c9711909227c636e6084e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787175608-g1d824d/amp-linux-arm64"
      sha256 "2aeeec8b4e7f96a169c1d10f0cfa9d4da8a627b635dff37367e7049533cfea31"
    else
      url "https://static.ampcode.com/cli/0.0.1787175608-g1d824d/amp-linux-x64"
      sha256 "e89069a2ea69763e66f324bc7bcbcc3b35ba98342b7e9c9f30073bdb844ab80f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
