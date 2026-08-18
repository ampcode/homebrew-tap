class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787061794-gcf1624"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787061794-gcf1624/amp-darwin-arm64"
      sha256 "885f63e08e2c05f8e67cefee6b7b33bd257329170b4997f21077181e17f70675"
    else
      url "https://static.ampcode.com/cli/0.0.1787061794-gcf1624/amp-darwin-x64"
      sha256 "55d76ae0a28f2d3df1114e4c0076ebc29815b26ba4a786d25d89cf3cfadaf7e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787061794-gcf1624/amp-linux-arm64"
      sha256 "55708911d2555db5cf3d5a62f4f020183b1ef5e99894af77b250a33bc6d7ae9a"
    else
      url "https://static.ampcode.com/cli/0.0.1787061794-gcf1624/amp-linux-x64"
      sha256 "2704fda163195af3a4fc756155c80fb352abb7bffb929c7e84c127d6da0c422b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
