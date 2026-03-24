class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774369119-gbb3185"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774369119-gbb3185/amp-darwin-arm64"
      sha256 "dec2084b2e6887da2712c4d336f0b16c05f3b0b646a8c5c6bcb762aacc6d2f33"
    else
      url "https://static.ampcode.com/cli/0.0.1774369119-gbb3185/amp-darwin-x64"
      sha256 "881ed3c235dc32821cb67c00519a0cecbfd344924ef05c502a25353e3a323805"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774369119-gbb3185/amp-linux-arm64"
      sha256 "802de754cff9151084a642bbf032ce7e9a4b196396b993ecd062a32fbde22769"
    else
      url "https://static.ampcode.com/cli/0.0.1774369119-gbb3185/amp-linux-x64"
      sha256 "c20ded3152780dc7755a7317acbf2c35b04885e1ac4bbfee3a54611fcabfd01b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
