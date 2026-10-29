class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793246451-g9e5ffe"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793246451-g9e5ffe/amp-darwin-arm64"
      sha256 "cabd64d5703b27f0bcd002838f961ecb2ace94101823261f563264c8aa62b3a7"
    else
      url "https://static.ampcode.com/cli/0.0.1793246451-g9e5ffe/amp-darwin-x64"
      sha256 "c91b76bf24854b49a37b796a7bd4b5cb263498023facd522c83140f15766d035"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793246451-g9e5ffe/amp-linux-arm64"
      sha256 "3b209a2c2fd8ffe88730a45467a0a5f59700924bbbfe13ec35e8811b85256ddd"
    else
      url "https://static.ampcode.com/cli/0.0.1793246451-g9e5ffe/amp-linux-x64"
      sha256 "d5c5eb1fc4eb5b6f44ee563c7c7a941c129153b37460792c2124abcad482da8f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
