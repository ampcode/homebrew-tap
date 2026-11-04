class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793804260-g12625e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793804260-g12625e/amp-darwin-arm64"
      sha256 "9b98f4bfa7b3d73e50d77a963db53bda9dc2b597d45207c1fb4b5d2c41ff5e44"
    else
      url "https://static.ampcode.com/cli/0.0.1793804260-g12625e/amp-darwin-x64"
      sha256 "453101c6e7338b063193b6b05107635e9019a728cbc87b2e7154f3f509384e44"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793804260-g12625e/amp-linux-arm64"
      sha256 "d74c0ac2a83259c62406f034b61dafc33d645efc41ccc9959517898be37b99c0"
    else
      url "https://static.ampcode.com/cli/0.0.1793804260-g12625e/amp-linux-x64"
      sha256 "a56f6bb8ba5a07a0acc8b012294177dde8ce4f6c3cd6a00cb58e70b6bae8c877"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
