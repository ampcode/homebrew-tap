class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793937652-gdc5d48"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793937652-gdc5d48/amp-darwin-arm64"
      sha256 "a8fbb6e673880212d88d06177086de19231eda6f69f09a0b94e64df734532362"
    else
      url "https://static.ampcode.com/cli/0.0.1793937652-gdc5d48/amp-darwin-x64"
      sha256 "2a1f9a985d7db58a730b1f81fc0be9ebba30e8292e96d1985c61eb4ae0d612bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793937652-gdc5d48/amp-linux-arm64"
      sha256 "58dc065ec26995540dd238c493b99cacf97f657a2f3902e25f7a54035cba0b39"
    else
      url "https://static.ampcode.com/cli/0.0.1793937652-gdc5d48/amp-linux-x64"
      sha256 "c4096754ba99ed5148fe6f276e435af78e9294b80d1701e04f88a35deffdd190"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
