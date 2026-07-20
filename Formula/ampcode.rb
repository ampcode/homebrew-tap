class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784551160-g777afc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784551160-g777afc/amp-darwin-arm64"
      sha256 "4b47a3ab79b018a0e5e2cc82a7a7f12038e50565cb083a8b6b7ca8d016f0e562"
    else
      url "https://static.ampcode.com/cli/0.0.1784551160-g777afc/amp-darwin-x64"
      sha256 "ccef4152a30b1e605419f818ac6c1c8bd28e6df3e3ed44d3b313eded8aaabf3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784551160-g777afc/amp-linux-arm64"
      sha256 "c34b7e6408d5a14a1a976c93a4ed252abf3418ffdb3909d064084518cfbb5f8a"
    else
      url "https://static.ampcode.com/cli/0.0.1784551160-g777afc/amp-linux-x64"
      sha256 "93a6a2ea478ccc27d5e09f1ba40a4b60fc391517c0a5a84f7ef43119897f5bf4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
