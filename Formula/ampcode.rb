class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774621109-g7c1bd9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774621109-g7c1bd9/amp-darwin-arm64"
      sha256 "2a218a939bee07b5d17227be54bbcb129853831b5cdf4dc3c9d451f81d73db38"
    else
      url "https://static.ampcode.com/cli/0.0.1774621109-g7c1bd9/amp-darwin-x64"
      sha256 "cddb888fff31b7f8ea77dcfb09483e92c7c51e046d324bfbf0607eb6edd73a1e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774621109-g7c1bd9/amp-linux-arm64"
      sha256 "91e7b48968e293b9017d843b3707a5346bc1c3938c96dfdcd124fb9e8a5cbdcf"
    else
      url "https://static.ampcode.com/cli/0.0.1774621109-g7c1bd9/amp-linux-x64"
      sha256 "ef8a85979b39e8daa2f6cd4541772af57560a7252c3e7d9bd11c9567ce8ef6a9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
