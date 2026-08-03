class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785747753-g51f676"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785747753-g51f676/amp-darwin-arm64"
      sha256 "981e75a5669482b9fedc4d1a7d09b857b5659913813ae126a5105bd33ed8e043"
    else
      url "https://static.ampcode.com/cli/0.0.1785747753-g51f676/amp-darwin-x64"
      sha256 "2176c24c6f9590fb60a32f09d23fbef2c64802502e2309f9dccd7c5d8484d270"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785747753-g51f676/amp-linux-arm64"
      sha256 "8b482df6baf2fa7170a4ae6147abdd1c7883bbc50c93be97818c1de7b3e6aef7"
    else
      url "https://static.ampcode.com/cli/0.0.1785747753-g51f676/amp-linux-x64"
      sha256 "0629ea9efb00d6d7aaf60e942315a1c8411a0bd84130ecbe40684b7eda8e6474"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
