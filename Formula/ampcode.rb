class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795046458-g1dcfdb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795046458-g1dcfdb/amp-darwin-arm64"
      sha256 "fc20041fa34bda1c1348a69afeea5261144c1be7b17e967fa1d75979ef0a4db9"
    else
      url "https://static.ampcode.com/cli/0.0.1795046458-g1dcfdb/amp-darwin-x64"
      sha256 "158f3f47152638ff8c94335540b2d2f1c03d8b8037dbb00ecdb8ddbb11670dd6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795046458-g1dcfdb/amp-linux-arm64"
      sha256 "32dffa53ca206130cda95e7a156efd1bd85b82d30e58ac32e9baf3b91a03d819"
    else
      url "https://static.ampcode.com/cli/0.0.1795046458-g1dcfdb/amp-linux-x64"
      sha256 "26c6a21819ae50e95b479ea60592c790fac44365f224fca1a8ede68bbf206a25"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
