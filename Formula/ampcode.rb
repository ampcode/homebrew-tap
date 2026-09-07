class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788768055-gf27e57"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788768055-gf27e57/amp-darwin-arm64"
      sha256 "a4af8e04cb42590f10ef357be380b1d5b90d473f5e75468cdea7bf2910efb046"
    else
      url "https://static.ampcode.com/cli/0.0.1788768055-gf27e57/amp-darwin-x64"
      sha256 "3f1c10c84028e9c688d57478ad4744d7a18a72d93ea205af540d7b2cd1bac311"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788768055-gf27e57/amp-linux-arm64"
      sha256 "3ec87b87775b00b99191c3abccc2999db7da8226fb9802df25d130aaf6b36622"
    else
      url "https://static.ampcode.com/cli/0.0.1788768055-gf27e57/amp-linux-x64"
      sha256 "3620daf7342475121d8bc4e322d37027e6d835ce1c666a4988581474226a67f9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
