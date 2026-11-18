class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794974444-g035056"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794974444-g035056/amp-darwin-arm64"
      sha256 "283d3335cc02de9735a609a233a90960e931d400786bef1ce5e2b52c107c80dc"
    else
      url "https://static.ampcode.com/cli/0.0.1794974444-g035056/amp-darwin-x64"
      sha256 "793c90e0473526949e21c9e6b1ddd74b2d761eb17281ff4e6da3a26129250ff7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794974444-g035056/amp-linux-arm64"
      sha256 "f7772612820aa83487a0e2ba9cafd2ae5ec0718e2ebb32498598cb85e73360f8"
    else
      url "https://static.ampcode.com/cli/0.0.1794974444-g035056/amp-linux-x64"
      sha256 "c461470ef8b16013b42bad808fae91b83b8f57163562fa7973f1ade4c37406c2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
