class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784437277-g74ac3c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784437277-g74ac3c/amp-darwin-arm64"
      sha256 "83838b2473ce05febcbae96e243283dc92d16872544de5391430bc738f22c42b"
    else
      url "https://static.ampcode.com/cli/0.0.1784437277-g74ac3c/amp-darwin-x64"
      sha256 "cbbc0138e1a543c7a9b89df960d5873724e421305e59f1eae97a830e931b1aa2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784437277-g74ac3c/amp-linux-arm64"
      sha256 "a0f2b1a30df7ff8ab65dbd93885d929bf4b4b32c9761a20209a952b5c009a4af"
    else
      url "https://static.ampcode.com/cli/0.0.1784437277-g74ac3c/amp-linux-x64"
      sha256 "20e8c110e55353648034567a989a64b2ac8b95bf96fbddeb50b3717e8c21f7bc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
