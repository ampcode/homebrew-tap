class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775146591-g89dfa5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775146591-g89dfa5/amp-darwin-arm64"
      sha256 "9b7a9c45774ba64065adac4f2fe358b378671f5ee6c3778f425dc2778b5c85d6"
    else
      url "https://static.ampcode.com/cli/0.0.1775146591-g89dfa5/amp-darwin-x64"
      sha256 "2f3d809d4bad4c213b5ea498f48b32f787e07678ffd82d8c16c88c93dbc45c87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775146591-g89dfa5/amp-linux-arm64"
      sha256 "ccedcd2a3639d83d34d98b57726590f9b079dd7213f4baa9f803af729318b5b3"
    else
      url "https://static.ampcode.com/cli/0.0.1775146591-g89dfa5/amp-linux-x64"
      sha256 "344c7d1e47f14fdcfd9454746534955d34a027a9a2f03a6545a4b171938c7b2b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
