class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774923411-g30ee34"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774923411-g30ee34/amp-darwin-arm64"
      sha256 "3219595c98daca6d1af367e89e759b080ec5f97eb4ff2c8b5fd68fefb7cd637f"
    else
      url "https://static.ampcode.com/cli/0.0.1774923411-g30ee34/amp-darwin-x64"
      sha256 "50a2aaefe0c74192deb2c12c4c075786591cf551ebbc335dc3e6c9b1b8e5cbc3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774923411-g30ee34/amp-linux-arm64"
      sha256 "af017657e7d487f6ab3ad2bdbf66b0fbee385fd4be4a5955db09fa1a4650bde5"
    else
      url "https://static.ampcode.com/cli/0.0.1774923411-g30ee34/amp-linux-x64"
      sha256 "12e210c24bd22d32c0debf23640c93d142ba7f9f3d966a925989ca8029647077"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
