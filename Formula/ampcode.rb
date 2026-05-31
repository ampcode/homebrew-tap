class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780258875-gbc5263"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780258875-gbc5263/amp-darwin-arm64"
      sha256 "a46c288f114fa3e7c3769961635d62f7fa88af12f0b70caf0b31819713cfbb59"
    else
      url "https://static.ampcode.com/cli/0.0.1780258875-gbc5263/amp-darwin-x64"
      sha256 "25992a465512c67be8625df2fb21828ac157fedc07365149042091d82f0e2f1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780258875-gbc5263/amp-linux-arm64"
      sha256 "9b102562d7c980141a60f462029ff63632659f0ce12e296a52ab584ab14de50b"
    else
      url "https://static.ampcode.com/cli/0.0.1780258875-gbc5263/amp-linux-x64"
      sha256 "85161f13d4a78d7087702493321ff252107854381488164e42eee62725dbd5a1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
