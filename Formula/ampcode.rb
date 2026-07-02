class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782982774-g46b44b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782982774-g46b44b/amp-darwin-arm64"
      sha256 "373e35a3060a72bab9e54ae6667df820a70925b953a7db3a746c9ec8e438a3b0"
    else
      url "https://static.ampcode.com/cli/0.0.1782982774-g46b44b/amp-darwin-x64"
      sha256 "c2940a14a28452a1d052c922c9ee26cc13ef964cc4bde8e1504325dff500a7f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782982774-g46b44b/amp-linux-arm64"
      sha256 "1c64317bf7c6fdee689af96fe05cac65d3b6b0840828fb8b84c032f52bbee280"
    else
      url "https://static.ampcode.com/cli/0.0.1782982774-g46b44b/amp-linux-x64"
      sha256 "5a077193fad28020770159b96f52620f22cdc531eb512ae41d4effee8937174e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
