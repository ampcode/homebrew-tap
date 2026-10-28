class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793203246-g5eab6d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793203246-g5eab6d/amp-darwin-arm64"
      sha256 "02837dde3b34c3f39b7dd9ae6d99bbed9404ff6a399cc55cdc55795620faf0d8"
    else
      url "https://static.ampcode.com/cli/0.0.1793203246-g5eab6d/amp-darwin-x64"
      sha256 "a2ecdca5431f857e2725cdecb1c895f4297d7ecf8b4b4a51314040c564faea4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793203246-g5eab6d/amp-linux-arm64"
      sha256 "5b6e8aae450924b6f29b7575051fd6e47db9e690cdc345962b77b84024e00082"
    else
      url "https://static.ampcode.com/cli/0.0.1793203246-g5eab6d/amp-linux-x64"
      sha256 "27d8578d9b80df663e2270ab82996bfcb806c7282d42a59cc281634b0ab6ef16"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
