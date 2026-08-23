class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787500903-g384b39"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787500903-g384b39/amp-darwin-arm64"
      sha256 "1be29ca5ed688105c17eb9120ce10edbf40399c1370038b4a2a61d65f4d295aa"
    else
      url "https://static.ampcode.com/cli/0.0.1787500903-g384b39/amp-darwin-x64"
      sha256 "30e5287bea65c82c14cc47dbcc4231ee7df684fe0a14abe1699586acc6462d97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787500903-g384b39/amp-linux-arm64"
      sha256 "083d932fe99145e7bca1ea70ab9ffebd918738bc66ae9ad7f12e42b1a0600fb5"
    else
      url "https://static.ampcode.com/cli/0.0.1787500903-g384b39/amp-linux-x64"
      sha256 "d7d7d0025b4f23e637a73d004df553b3029c3a068a6da14eedfe131d37b9cfd4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
