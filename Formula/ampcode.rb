class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794424433-gbe467d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794424433-gbe467d/amp-darwin-arm64"
      sha256 "5cdc592d0778ab0e2a382a23e00e4675b411a91fd47af763a63c2fb82529a48a"
    else
      url "https://static.ampcode.com/cli/0.0.1794424433-gbe467d/amp-darwin-x64"
      sha256 "742daefa9ad7b86f659c08c15e25dff2284a7ab8bf730b52e5c238251116d2ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794424433-gbe467d/amp-linux-arm64"
      sha256 "eb92d71b57e6fd8a0c7bd908b63650635515960b5c80b6d2ba5fe9f14e5d7e41"
    else
      url "https://static.ampcode.com/cli/0.0.1794424433-gbe467d/amp-linux-x64"
      sha256 "93654ed8f5e6b6a3b56aa5d9130b0982b9ea8225c85230c1c3477ba3dbbfcda8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
