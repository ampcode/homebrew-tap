class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779959155-g362e01"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779959155-g362e01/amp-darwin-arm64"
      sha256 "7555d6249aca1727e10f10f8914377796ff9279f2af5d8f3ff3216323f6033f8"
    else
      url "https://static.ampcode.com/cli/0.0.1779959155-g362e01/amp-darwin-x64"
      sha256 "366fc95db6f815d8257e1b5538759e811681c2f7b581987b2077f1c349c203b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779959155-g362e01/amp-linux-arm64"
      sha256 "fab792e301d2fa2e64e3f4944898e829884b01337204161b9c4170067210482d"
    else
      url "https://static.ampcode.com/cli/0.0.1779959155-g362e01/amp-linux-x64"
      sha256 "25ee2e0b61aabb694e911bebd1d35164cd845a55d785be85877309f6c998b601"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
