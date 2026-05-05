class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777988768-gebece7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777988768-gebece7/amp-darwin-arm64"
      sha256 "2378f1c30e64f86afbc8ce3491ac6a075f5bac32b9a82b6272f634c5d915b76b"
    else
      url "https://static.ampcode.com/cli/0.0.1777988768-gebece7/amp-darwin-x64"
      sha256 "6b934c555ef0931346c8fd7aa11c21a9b5b7326a533ddcb02e45781cd355bcd3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777988768-gebece7/amp-linux-arm64"
      sha256 "9404b96aaeeb5d243b723f7966da674ddc008ca7309d4be44909f3fab10f0e03"
    else
      url "https://static.ampcode.com/cli/0.0.1777988768-gebece7/amp-linux-x64"
      sha256 "cb2dae94e82d8ba023968e57984c6fd51b6f0be9634524931522fc1118c34041"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
