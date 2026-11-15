class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794715238-g81da65"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794715238-g81da65/amp-darwin-arm64"
      sha256 "1936359952da89030d0830820547bd892172c3b82c8e523386d19328c6ef8693"
    else
      url "https://static.ampcode.com/cli/0.0.1794715238-g81da65/amp-darwin-x64"
      sha256 "c9f42e0771061678f78c1bdebedfc5cdaf8d9b5e7ddfbce14e1e473097604f71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794715238-g81da65/amp-linux-arm64"
      sha256 "87c38c75d5791d9ae7bac982651ffe76b7ed6bb1a39d7d182eacd862cbb90569"
    else
      url "https://static.ampcode.com/cli/0.0.1794715238-g81da65/amp-linux-x64"
      sha256 "956caa1e33b5031371c3a80e47d43c1e138c940fdfd9f40fab46205c3dbad095"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
