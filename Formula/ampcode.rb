class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791417679-g5d841b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791417679-g5d841b/amp-darwin-arm64"
      sha256 "d4a66e8384f024913e4b01d0d74006204154118b807969cf06f90c3f1219e58a"
    else
      url "https://static.ampcode.com/cli/0.0.1791417679-g5d841b/amp-darwin-x64"
      sha256 "9f50c58a4f647f8ea0aae67d64676a7c1f80c521c7fe720dc4b6ce136ff785a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791417679-g5d841b/amp-linux-arm64"
      sha256 "2c1e45ae790a087740c2a0f9626597dd8d44cc217bec9629503517ae33c0062a"
    else
      url "https://static.ampcode.com/cli/0.0.1791417679-g5d841b/amp-linux-x64"
      sha256 "e95f578f5bab4914e779cc6de5139443514e2f2b298be3db0f4ff43a780ecfa2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
