class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790020866-g863e06"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790020866-g863e06/amp-darwin-arm64"
      sha256 "5705df7ca3f105650a7c07a62c51d621adb96a6d3381240c82988cce4ba3a885"
    else
      url "https://static.ampcode.com/cli/0.0.1790020866-g863e06/amp-darwin-x64"
      sha256 "d29fb2a7a533f342c54a3eefa47256f1988b92ac82f61646c5e71bdc24fbae09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790020866-g863e06/amp-linux-arm64"
      sha256 "8987e956d04e4f9e00b017fcae67dced33dd938552fb17709104d9c43311add7"
    else
      url "https://static.ampcode.com/cli/0.0.1790020866-g863e06/amp-linux-x64"
      sha256 "199931530ebf902457e001a0c00ca3d00fcf2cd123cc9c790627c7b38b40d086"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
