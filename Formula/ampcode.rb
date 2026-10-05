class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791158509-g485487"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791158509-g485487/amp-darwin-arm64"
      sha256 "1f9387ec58132026612d8d79b15c466fa6d4e8485ab273f3b9d3947dec1b56aa"
    else
      url "https://static.ampcode.com/cli/0.0.1791158509-g485487/amp-darwin-x64"
      sha256 "f4ae8e4c3ebac0b3028631f4e0af7e310c147c9fa27884ff29ed9bc47018850a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791158509-g485487/amp-linux-arm64"
      sha256 "b49a808015ea21f401120a3bec40b68aab234a34404691593dd25f2db248c6dc"
    else
      url "https://static.ampcode.com/cli/0.0.1791158509-g485487/amp-linux-x64"
      sha256 "ccc1219fa1d231b885b55b0e6f5ba8fc68be659224e51c323408600789c26d0c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
