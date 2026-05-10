class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778415137-g13ad60"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778415137-g13ad60/amp-darwin-arm64"
      sha256 "0d4ad54edbfd7c733be6d0c4c725325da325aaddb9ee74b2cdc73be1736a5d01"
    else
      url "https://static.ampcode.com/cli/0.0.1778415137-g13ad60/amp-darwin-x64"
      sha256 "df02d00dd2f9ee6afc61290aedd74790f473c30e85cb4db5ad28db954397af38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778415137-g13ad60/amp-linux-arm64"
      sha256 "bcec309dc9f8193dd17ca0b745f340099d0cd01412d83b01615c00d0fc784e9b"
    else
      url "https://static.ampcode.com/cli/0.0.1778415137-g13ad60/amp-linux-x64"
      sha256 "db1f37b3abea552684577d36f3c45af10adfb0fe0096bfe479369127e3c18e06"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
