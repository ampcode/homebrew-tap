class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774380100-g7de9c3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774380100-g7de9c3/amp-darwin-arm64"
      sha256 "87806d9a827762ab54da5c85ebfe2d0d44601103fc589c127a4af97f132b714a"
    else
      url "https://static.ampcode.com/cli/0.0.1774380100-g7de9c3/amp-darwin-x64"
      sha256 "7dc78ddb00500f01f3c86334eaa0c803be882baa5c995460c343f7afcf8b34bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774380100-g7de9c3/amp-linux-arm64"
      sha256 "14b19ef0caf89582a93f055580ce14aba6af5b6cb31355d53af646839ce6a213"
    else
      url "https://static.ampcode.com/cli/0.0.1774380100-g7de9c3/amp-linux-x64"
      sha256 "71502c4a31257d074b1921243900d48292c886761e2d8ce959445a4c1599a055"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
