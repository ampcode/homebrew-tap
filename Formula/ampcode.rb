class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793822441-g8e158a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793822441-g8e158a/amp-darwin-arm64"
      sha256 "768b134d3d6ca6b0bd7ef3520dbfe09b9176410cd909b95b0c36b2180ae6d776"
    else
      url "https://static.ampcode.com/cli/0.0.1793822441-g8e158a/amp-darwin-x64"
      sha256 "4411bd3f92b60f178e7d5139c9c2051f8df367c68238685f50a6a04d0f7dda97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793822441-g8e158a/amp-linux-arm64"
      sha256 "6b9bd0ce18d4661d2bcefa26ddacf52e0174c35e4c0017482b77a9effec7f2e2"
    else
      url "https://static.ampcode.com/cli/0.0.1793822441-g8e158a/amp-linux-x64"
      sha256 "c25cf7ed5d3bff6f62aa83b9b0d26f18d7b40bc7657d9286a2f8315985b5abe9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
