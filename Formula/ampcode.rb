class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776773656-g3af5a4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776773656-g3af5a4/amp-darwin-arm64"
      sha256 "c759af0ca7d1be979afb61e030eb04d5d9b470aa622729d5feac5a5545a1e727"
    else
      url "https://static.ampcode.com/cli/0.0.1776773656-g3af5a4/amp-darwin-x64"
      sha256 "a0adbf211772143549f27b42e67a632126ba445396c6d1c2d8e9c219f0b38e17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776773656-g3af5a4/amp-linux-arm64"
      sha256 "dfa69d5984d1b853c12fda825f9d5cabe72c43ce6b1f150ad5c327487e512161"
    else
      url "https://static.ampcode.com/cli/0.0.1776773656-g3af5a4/amp-linux-x64"
      sha256 "6e5e7448bfcb500eebe1e6ac31b1be5c132c4a2d5db3c3699c0ed7dbe7dbea64"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
