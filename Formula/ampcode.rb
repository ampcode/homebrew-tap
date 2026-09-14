class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789387243-g7e52f2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789387243-g7e52f2/amp-darwin-arm64"
      sha256 "015f79620e3b372a2e1cac56fbf0796f0c869d40ab51ba311d566007c42aac2c"
    else
      url "https://static.ampcode.com/cli/0.0.1789387243-g7e52f2/amp-darwin-x64"
      sha256 "06b8bc5c043e241e15b4266869430f925291c92337da53c7b03ebe0eb3061110"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789387243-g7e52f2/amp-linux-arm64"
      sha256 "3e8105a2c43f7d58fa5458dfabceead96dff8e207513bc1905b2f2b32188e81b"
    else
      url "https://static.ampcode.com/cli/0.0.1789387243-g7e52f2/amp-linux-x64"
      sha256 "27c8d474bee7dcf46507f0d615406ba0973ef164c33586dbe16044483fef7b04"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
