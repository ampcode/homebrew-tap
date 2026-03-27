class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774641990-g5558e8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774641990-g5558e8/amp-darwin-arm64"
      sha256 "7d921242925a45a6df1a91600a003a71fc771aa5a651b7dd699a617c0ceea5c7"
    else
      url "https://static.ampcode.com/cli/0.0.1774641990-g5558e8/amp-darwin-x64"
      sha256 "f425ec9dcb31c7f29b99bba75df195ddb5b9d86e6a15099930411a5110facc6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774641990-g5558e8/amp-linux-arm64"
      sha256 "c67ebbddb16e8fd9bc5afe2cf10d3f774296be2dc3050d811aa7ce5fcd3afbe2"
    else
      url "https://static.ampcode.com/cli/0.0.1774641990-g5558e8/amp-linux-x64"
      sha256 "f261e122a1385794a93b793d9688f2dbac295b1eed686c4626ac37e524aeb12d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
