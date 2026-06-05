class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780663917-gcd1d7e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780663917-gcd1d7e/amp-darwin-arm64"
      sha256 "2b9005bccadd2a9e823130f8f7a256ed48af596ac167108792dc247905c01088"
    else
      url "https://static.ampcode.com/cli/0.0.1780663917-gcd1d7e/amp-darwin-x64"
      sha256 "e70300d0c2a5a4c823ec4ff9ceb982ec61979648a4a3b2bffcb0e92a7f5b4d51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780663917-gcd1d7e/amp-linux-arm64"
      sha256 "8a655a098fa20c7d0309ee2d54b2b57d3745a1952eaf0e59f3bb7e6c1419ab0f"
    else
      url "https://static.ampcode.com/cli/0.0.1780663917-gcd1d7e/amp-linux-x64"
      sha256 "c7ca13bbdf6e8fb1eb401f14ae2773ef5e425f0941805849e3f46a7e18e9dfe5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
