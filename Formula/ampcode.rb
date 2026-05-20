class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779236441-g5063f4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779236441-g5063f4/amp-darwin-arm64"
      sha256 "ccd626270c1ccfedb18008ee54fb367c70bece7e15c699e0f73fbcafb9b6d317"
    else
      url "https://static.ampcode.com/cli/0.0.1779236441-g5063f4/amp-darwin-x64"
      sha256 "604b76675ef2b1e3f0bedb06bfb58b6102dde1d475d605292aaaef0ff8dff36d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779236441-g5063f4/amp-linux-arm64"
      sha256 "71861150858431aec5aaa183e1489ae938427901df2b9176da1831fc4f033f01"
    else
      url "https://static.ampcode.com/cli/0.0.1779236441-g5063f4/amp-linux-x64"
      sha256 "b838752bcae9bb8ce85c22775c74544d6b6db7ed741a6e839139848e1b49b01f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
