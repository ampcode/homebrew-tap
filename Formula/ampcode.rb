class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788273457-g897250"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788273457-g897250/amp-darwin-arm64"
      sha256 "c4841b5ec3f621fdd48599c6e5e844404a402095f0104976ddc5207075866709"
    else
      url "https://static.ampcode.com/cli/0.0.1788273457-g897250/amp-darwin-x64"
      sha256 "e6c3478a3c855de309620ed0dbaf0d3057966e06ea841cd2a88b584604af6e58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788273457-g897250/amp-linux-arm64"
      sha256 "a36cf4e67dd7d788870d9850d846c4463157d737852b078639a6a008f06cc3c6"
    else
      url "https://static.ampcode.com/cli/0.0.1788273457-g897250/amp-linux-x64"
      sha256 "a076324c93af30991c5752b0f8186b3d90e2c5f8bc2f3e6c888e8310ac14a084"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
