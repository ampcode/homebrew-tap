class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789214504-g32aed6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789214504-g32aed6/amp-darwin-arm64"
      sha256 "bab783e9b54122898cc38a0a9e43d07b25153d5d42ed561be514d5006d602558"
    else
      url "https://static.ampcode.com/cli/0.0.1789214504-g32aed6/amp-darwin-x64"
      sha256 "1ea026a791bf07647bcb7e612e43aa0cc2d4b297455e43b2c0a54a647f29e614"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789214504-g32aed6/amp-linux-arm64"
      sha256 "18f52a81576dc2822ab8d0bb8d88de636ddf4d248695a931b1e5a88c80b0ee8a"
    else
      url "https://static.ampcode.com/cli/0.0.1789214504-g32aed6/amp-linux-x64"
      sha256 "4330ec3679525420d4faa2e57f2bc08f493deb9bcf62ee211234c54fb30532de"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
