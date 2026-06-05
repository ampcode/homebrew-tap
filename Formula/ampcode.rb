class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780617806-gebd890"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780617806-gebd890/amp-darwin-arm64"
      sha256 "8423a3b2f31700cbac0f0e85988ca38c9f919a1066e0226682f7dc0b0a44b266"
    else
      url "https://static.ampcode.com/cli/0.0.1780617806-gebd890/amp-darwin-x64"
      sha256 "d05c234420914398010632a359b17b33531c02967a3605e06f313dd685058a8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780617806-gebd890/amp-linux-arm64"
      sha256 "1dc3553a21467ccd364555e66aa7628650996cb9afa25d3918d44d60505beaa9"
    else
      url "https://static.ampcode.com/cli/0.0.1780617806-gebd890/amp-linux-x64"
      sha256 "a9bd1beaf8bc1c61f85038fa64ba26d8708beabb8d3a07d809b8cc69f5e064c8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
