class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776823978-g084503"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776823978-g084503/amp-darwin-arm64"
      sha256 "0f31de04dbd23274c3cec36ce5b9315983158eab0da559a60ceaaba1827c42fe"
    else
      url "https://static.ampcode.com/cli/0.0.1776823978-g084503/amp-darwin-x64"
      sha256 "d6f12383a484d24ee8ed73f94dba2509ecb63a783b220e5d06552abc8448d774"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776823978-g084503/amp-linux-arm64"
      sha256 "7431980531c61c90c52297004bd87abe874221b759975b3f9f9f8a2d225d638a"
    else
      url "https://static.ampcode.com/cli/0.0.1776823978-g084503/amp-linux-x64"
      sha256 "a6de72bd09e147117efacf663ee3203e46b4d0f18dfef0779665a0642e5be219"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
