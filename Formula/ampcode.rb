class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774539491-g39ae67"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774539491-g39ae67/amp-darwin-arm64"
      sha256 "ea69a69c5f20b4d7b56d4dcca4c311abc5ea9aabc4e6056a673bc0608394adbd"
    else
      url "https://static.ampcode.com/cli/0.0.1774539491-g39ae67/amp-darwin-x64"
      sha256 "4ce9fc5c43e0cc79beed7d95195e485adfb9a9ac2f6520fdf4c088dc4163f89d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774539491-g39ae67/amp-linux-arm64"
      sha256 "e7def0fbff4ceb2eb3bf3e3da397a7905b00e87b7cc3514729e70f58fb9ffa6e"
    else
      url "https://static.ampcode.com/cli/0.0.1774539491-g39ae67/amp-linux-x64"
      sha256 "2fdfeb18613950756dac36a40aa0754ad7d494ba37d3970d6cb0ec39106de5b3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
