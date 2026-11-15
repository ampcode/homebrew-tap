class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794744038-ga74b43"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794744038-ga74b43/amp-darwin-arm64"
      sha256 "ce8369777514447c393332f717eec65bb813ef349fc2d04ac99266079ecbd88d"
    else
      url "https://static.ampcode.com/cli/0.0.1794744038-ga74b43/amp-darwin-x64"
      sha256 "fe334a4e56ec0ef04265eef410b348efda3929000d210aae0ed71d511a3ae64e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794744038-ga74b43/amp-linux-arm64"
      sha256 "0cf1db2f9d3d217c2c3dea4249577a3103f862f4951fc63fbbaf7376a8def499"
    else
      url "https://static.ampcode.com/cli/0.0.1794744038-ga74b43/amp-linux-x64"
      sha256 "022cd242225592039324f8bddec085993a8a653208d6f6313bc1f871f0f402d1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
