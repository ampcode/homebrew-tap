class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779740790-ge97538"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779740790-ge97538/amp-darwin-arm64"
      sha256 "9fddce4639c2629e8dc433c56328eb9e185ecf9b333fe9bb645a719c5f2e7d63"
    else
      url "https://static.ampcode.com/cli/0.0.1779740790-ge97538/amp-darwin-x64"
      sha256 "18c2b7b62708e460367778a3889ed88f8cff6aaa5d7a12e90aa9c6b4567fbebc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779740790-ge97538/amp-linux-arm64"
      sha256 "cdde411b32fb1e3358edec84b66d3bd4f49dbb70c47d556d9b30c4833999b5a7"
    else
      url "https://static.ampcode.com/cli/0.0.1779740790-ge97538/amp-linux-x64"
      sha256 "50e309df7d8eebe510b0061b05621f53619f894c3db5bd91433d3c0d81b0a70f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
