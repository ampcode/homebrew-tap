class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774586686-ge711c6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774586686-ge711c6/amp-darwin-arm64"
      sha256 "c3f73243cfe8eed1ecfe88ddd0d1aecfbe4d746da76485612fab7c333fcc022b"
    else
      url "https://static.ampcode.com/cli/0.0.1774586686-ge711c6/amp-darwin-x64"
      sha256 "8715a914a158e4b8d76d14478bc771210b348f2f38fcd773a7944ada7e19f9df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774586686-ge711c6/amp-linux-arm64"
      sha256 "0ace5665e8796ffd4792937d658072c0dfe9ae88bcc5fa1822c1b355af67d496"
    else
      url "https://static.ampcode.com/cli/0.0.1774586686-ge711c6/amp-linux-x64"
      sha256 "997da10ff2a3b9d0116943bed490c2392d5072253ceaa900e7285a7fdda044d3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
