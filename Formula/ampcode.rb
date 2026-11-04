class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793779247-g2a7556"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793779247-g2a7556/amp-darwin-arm64"
      sha256 "0193c6017c0dd613b28eac258de89c77aa0fb0f75c27cc94fdc19d794d0822bb"
    else
      url "https://static.ampcode.com/cli/0.0.1793779247-g2a7556/amp-darwin-x64"
      sha256 "9e44b27fb175c41c60bc6a8d957a6fa0e91a3df7274f3163b17a4171531cdf33"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793779247-g2a7556/amp-linux-arm64"
      sha256 "c7f41275e4cacd6f3dd65a96e722c37a5e4a428d7f918962f168b40c18e7da29"
    else
      url "https://static.ampcode.com/cli/0.0.1793779247-g2a7556/amp-linux-x64"
      sha256 "4ca2b18b736f91fb6b2da54ac0495f366be488e707f9b4c8361d9658fd9848b5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
