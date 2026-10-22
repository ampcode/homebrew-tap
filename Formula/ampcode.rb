class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792680614-g8973a3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792680614-g8973a3/amp-darwin-arm64"
      sha256 "ee81641d9a1f9b0c54478badeccd60a40c78377d7fe1339976bbdd216c2cbd53"
    else
      url "https://static.ampcode.com/cli/0.0.1792680614-g8973a3/amp-darwin-x64"
      sha256 "c544b777ef522d152a1890b112322460bf1e89894fa9b4e2c2fd3eb6f5dcac03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792680614-g8973a3/amp-linux-arm64"
      sha256 "235364cf6056387ca53cd57dd2b564aefdacfaf1bda252ebf4be6e61da60f9e0"
    else
      url "https://static.ampcode.com/cli/0.0.1792680614-g8973a3/amp-linux-x64"
      sha256 "89304a6e5bc739807062433a28bba5a98dc8dfbae05d8674df06a465103c8f3f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
