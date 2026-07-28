class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785214828-gbb3a96"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785214828-gbb3a96/amp-darwin-arm64"
      sha256 "9954ca45777a792d74db70ea8c28d8bf973671da01bc274a85e8f556a31970ed"
    else
      url "https://static.ampcode.com/cli/0.0.1785214828-gbb3a96/amp-darwin-x64"
      sha256 "2f938c11bd59cdf3e5e03911d6664031a36ce2fe24c4917380979922a6df8ccb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785214828-gbb3a96/amp-linux-arm64"
      sha256 "e08956a2d1f0b05d353007d2fd46f007f03e3930b121c9be646f27b8e1111df3"
    else
      url "https://static.ampcode.com/cli/0.0.1785214828-gbb3a96/amp-linux-x64"
      sha256 "3e27056cfafad87e6823b2beb5132e5f7c35d31c46151ccc449b7f81431c3aac"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
