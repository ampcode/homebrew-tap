class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778235017-g38b248"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778235017-g38b248/amp-darwin-arm64"
      sha256 "21d4c403ef40882a81141eaf60f2020afe0dfa0e8c20bf6725b7680eab075b48"
    else
      url "https://static.ampcode.com/cli/0.0.1778235017-g38b248/amp-darwin-x64"
      sha256 "9c82daa827360d9bb471f16fb289f2c6a56731b4097f536449cdf1591856ba43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778235017-g38b248/amp-linux-arm64"
      sha256 "1a9b3fff3783da2ce954fe8ebd06be219878389148a0f8bc3dfef3e51514af77"
    else
      url "https://static.ampcode.com/cli/0.0.1778235017-g38b248/amp-linux-x64"
      sha256 "f1aceaae9d2b10b2a7c4d00afd712b8bf5a17fabbb37b2e334d1fe47b801406c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
