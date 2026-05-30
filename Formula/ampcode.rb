class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780161554-g4269dd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780161554-g4269dd/amp-darwin-arm64"
      sha256 "8e1d01d6672c314b506dc9f5c3052f6ff37a3411b3db801964b8067269260c47"
    else
      url "https://static.ampcode.com/cli/0.0.1780161554-g4269dd/amp-darwin-x64"
      sha256 "c56dd5dc2e230ded8dd87b11d0f5b16ff30a1f119171f9415f4ae38a7824b126"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780161554-g4269dd/amp-linux-arm64"
      sha256 "797e0d7444661967eb926e0e0510138e1da98f1793c9cd25eb9ed076002dc738"
    else
      url "https://static.ampcode.com/cli/0.0.1780161554-g4269dd/amp-linux-x64"
      sha256 "0be5bb3c4aab03ddee938c03184d259a0b547d2c419c0586e385559809cef953"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
