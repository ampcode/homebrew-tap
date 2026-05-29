class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780089940-gbc930f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780089940-gbc930f/amp-darwin-arm64"
      sha256 "11468bfed7353d22abc77f0b101467a3a874e7d29c7f12116d9d60791016f4d4"
    else
      url "https://static.ampcode.com/cli/0.0.1780089940-gbc930f/amp-darwin-x64"
      sha256 "a2a690a0f60a376df22e4a38bf203f9e246131253183016351a0c715ecf37eed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780089940-gbc930f/amp-linux-arm64"
      sha256 "7917273fb30c10d78d2d1b2100660a49d915ea93fd250c77d545c72d90e22732"
    else
      url "https://static.ampcode.com/cli/0.0.1780089940-gbc930f/amp-linux-x64"
      sha256 "087e7cb7b1a28ed9516c18e8f34cd7bbc5f32c0637c86bbbc08ea1aa84c386a9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
