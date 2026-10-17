class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792195263-g037e53"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792195263-g037e53/amp-darwin-arm64"
      sha256 "6932faf81053e2b315719124428156eb3d2637d680bdbaad437a6a676f4181e6"
    else
      url "https://static.ampcode.com/cli/0.0.1792195263-g037e53/amp-darwin-x64"
      sha256 "aabc893d0c1f67e082f84ae5bc0f2ffb11760d2d380554d7dbd1c97128c5e154"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792195263-g037e53/amp-linux-arm64"
      sha256 "77212cd7c14a14810de1254e06bcb04c59028af11a5127aebc8409ac81701d67"
    else
      url "https://static.ampcode.com/cli/0.0.1792195263-g037e53/amp-linux-x64"
      sha256 "42e3b997f032932fe65e04728c77e1991d8da970595e2b4a97063aeddcc9ec2d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
