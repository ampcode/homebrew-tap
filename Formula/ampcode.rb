class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783254279-ge7c178"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783254279-ge7c178/amp-darwin-arm64"
      sha256 "d8c0c89b0577910fcc1ee657bb3108e356acf886f150ad83b119217dd4d97f47"
    else
      url "https://static.ampcode.com/cli/0.0.1783254279-ge7c178/amp-darwin-x64"
      sha256 "0be46ea06ba06f96cd768049f81f5eebbb742f255fa3ac0525f259b32b39995f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783254279-ge7c178/amp-linux-arm64"
      sha256 "204dac7bb4afaa85918d1c5a008a44c2489ba121a40528352c187a3f3c8a7ff2"
    else
      url "https://static.ampcode.com/cli/0.0.1783254279-ge7c178/amp-linux-x64"
      sha256 "f2edaab37328085bad30e620b73deceeb3f391eb163446e3e21ef1a924fa1d5e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
