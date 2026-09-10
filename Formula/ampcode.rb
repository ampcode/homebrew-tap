class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789070426-g45e5fe"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789070426-g45e5fe/amp-darwin-arm64"
      sha256 "917698078b496eafe45b670db1246c946b2516b985efda3af710e4c14e1e40ee"
    else
      url "https://static.ampcode.com/cli/0.0.1789070426-g45e5fe/amp-darwin-x64"
      sha256 "e254c69e1a37af82762407a2758b03a53352b26a6e6129274a73a0d5955d90df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789070426-g45e5fe/amp-linux-arm64"
      sha256 "09610e0e515a7517bc08e3c03326fb63758c5e07357ddcb130e4adc0b9eb7ec5"
    else
      url "https://static.ampcode.com/cli/0.0.1789070426-g45e5fe/amp-linux-x64"
      sha256 "c523718445b70e3ee1d9025cc866bc9ae51792e579d9648e532d7181fca16c83"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
