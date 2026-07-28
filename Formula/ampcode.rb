class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785241901-gcaf206"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785241901-gcaf206/amp-darwin-arm64"
      sha256 "241536b6e753550ddc52bd808aa596972dc733bf22190c505eb5f0e4fe668115"
    else
      url "https://static.ampcode.com/cli/0.0.1785241901-gcaf206/amp-darwin-x64"
      sha256 "a104baa70874af548c076e4be4fb65e2b78f14fdfae3babfcd079d9e8a93b9d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785241901-gcaf206/amp-linux-arm64"
      sha256 "6627343a49f2f67fdf020174ff4d922753cf4ad81104553ac9515045cf115bca"
    else
      url "https://static.ampcode.com/cli/0.0.1785241901-gcaf206/amp-linux-x64"
      sha256 "62f9cc02fc4f03f431af3b84c96fa3eb1c2af440853fcec4914799fae69e53d9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
