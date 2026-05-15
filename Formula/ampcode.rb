class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778848236-ga3d44a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778848236-ga3d44a/amp-darwin-arm64"
      sha256 "8932dcee970cbf2c5c43b19ad0d553e75cb4dce1c483cdbd27d10415de1ab06f"
    else
      url "https://static.ampcode.com/cli/0.0.1778848236-ga3d44a/amp-darwin-x64"
      sha256 "3a62016437500a1f1a797742187f2db2965a6ed78f17d2ba6a4dd5ca906d5104"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778848236-ga3d44a/amp-linux-arm64"
      sha256 "eb67f4f7f9d70e78cdd3b8509dbac60aa2f8fa90c8dd95fc4f1feb22985bcdea"
    else
      url "https://static.ampcode.com/cli/0.0.1778848236-ga3d44a/amp-linux-x64"
      sha256 "2abef0214fb7304f3f92597f1bfb59f44f79f9a97a9200b643d095b1cc0b0498"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
