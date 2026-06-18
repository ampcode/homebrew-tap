class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781771288-g185e1c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781771288-g185e1c/amp-darwin-arm64"
      sha256 "4e5dfe9587cf837478e758a20687b7cf79a831c25933f1e0d56ba67c9ce15800"
    else
      url "https://static.ampcode.com/cli/0.0.1781771288-g185e1c/amp-darwin-x64"
      sha256 "ffab15e1f190d2085acaf0c073f352e70d2dc2847fee56dc87a0bf54bb4b1cd6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781771288-g185e1c/amp-linux-arm64"
      sha256 "fc1e115735171be1691cd69ea19706b1891eb117a15aed0f682750ae126cad6a"
    else
      url "https://static.ampcode.com/cli/0.0.1781771288-g185e1c/amp-linux-x64"
      sha256 "8e21a90a3b2017d605154e288c32a83676071a6a67202f5e5d4732e9a57d3fe5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
