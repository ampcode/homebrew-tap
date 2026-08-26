class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787761501-g088742"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787761501-g088742/amp-darwin-arm64"
      sha256 "f5e9cde8840f0a5aeb6860166097280043a40da832f6190fb88ebc4484537be6"
    else
      url "https://static.ampcode.com/cli/0.0.1787761501-g088742/amp-darwin-x64"
      sha256 "e4eba56edb387f15bb0f267ece1e8ad972246619c04b2c7dff5382ce050401c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787761501-g088742/amp-linux-arm64"
      sha256 "4bfa3d1727a2d37118e472eeeb71a1ad8fe6317aa8512b3495907361ee9245b9"
    else
      url "https://static.ampcode.com/cli/0.0.1787761501-g088742/amp-linux-x64"
      sha256 "302a5d2c25cd7f02589c7dab665fc7d599820b4f4fef0119325c95e0909cb3c3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
