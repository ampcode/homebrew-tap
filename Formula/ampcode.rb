class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783500564-g5a62da"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783500564-g5a62da/amp-darwin-arm64"
      sha256 "cc36d41326cbcb8f649dbf6a786c8a70f1bf91198bf82a3e6a2c889753efa0b0"
    else
      url "https://static.ampcode.com/cli/0.0.1783500564-g5a62da/amp-darwin-x64"
      sha256 "1974ebe7076dd3c26b4e6b25085fc19acfc3b21a9788790dc7a4bc5f62e699e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783500564-g5a62da/amp-linux-arm64"
      sha256 "0522dad0e3aa2af1000ad7fde21b81592d48c5f44dd359b54c5a1d17a19f9ea7"
    else
      url "https://static.ampcode.com/cli/0.0.1783500564-g5a62da/amp-linux-x64"
      sha256 "cf038e8c7da5bc4b57cf21c6a06e4d0a27ad99032ae9d0aca923f4388d05703c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
