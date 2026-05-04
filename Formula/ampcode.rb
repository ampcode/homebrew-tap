class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777910718-gcdf3ba"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777910718-gcdf3ba/amp-darwin-arm64"
      sha256 "0a456d9466ee324014434b67fcd63e3b6afb72e84279b51a422ee23ca762ce08"
    else
      url "https://static.ampcode.com/cli/0.0.1777910718-gcdf3ba/amp-darwin-x64"
      sha256 "6fcc218e2f7ed6482da87b9113a0b88db0dd1906505e045fd0db05993ee25aa2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777910718-gcdf3ba/amp-linux-arm64"
      sha256 "da4cffae83d95f9ba07936d1d09d8f53ca9376c68d7a08845af58a0ebc4d0a7e"
    else
      url "https://static.ampcode.com/cli/0.0.1777910718-gcdf3ba/amp-linux-x64"
      sha256 "1c20df7daf60f41d30ba4732525470e4090dc8f5e2220f670974edb9877beec3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
