class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782211866-g0fdbd3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782211866-g0fdbd3/amp-darwin-arm64"
      sha256 "ef00719a15de3680b2a23a8a66669c05b0362faaa1dcbf24a3d3969a0dbc10fb"
    else
      url "https://static.ampcode.com/cli/0.0.1782211866-g0fdbd3/amp-darwin-x64"
      sha256 "dc083ec5ca0ca547a0a4f23bbd6cccdf28f65e5dba374de5ff9193ede8555626"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782211866-g0fdbd3/amp-linux-arm64"
      sha256 "24f3d3b98bab59b7d7fd99e535a53f42f34dab3a002521fbb49282772642bf48"
    else
      url "https://static.ampcode.com/cli/0.0.1782211866-g0fdbd3/amp-linux-x64"
      sha256 "9358a866c9388776d7cc0c6d1759fb29516069402c0982650ad113cd5f2ffff3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
