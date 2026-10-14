class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791936083-ga8cf1c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791936083-ga8cf1c/amp-darwin-arm64"
      sha256 "b3a8a839e855940a9543acbeba70d0e4017f09efeb9f4275137624a1f4c4a988"
    else
      url "https://static.ampcode.com/cli/0.0.1791936083-ga8cf1c/amp-darwin-x64"
      sha256 "500ceec2f777bf3d92bcdcbb7356af68b932675edb9cdf880c3d8ad118328ea2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791936083-ga8cf1c/amp-linux-arm64"
      sha256 "5e25908bd3aa5341bfaadd5613ea859ff37729e214e9d5b03199b0877695d0ca"
    else
      url "https://static.ampcode.com/cli/0.0.1791936083-ga8cf1c/amp-linux-x64"
      sha256 "7db2a5bb9d4af5b16c8a5a15c08c12ed1f9cbacde37b484ad776165cc13eb4fb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
