class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790265644-gf7438f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790265644-gf7438f/amp-darwin-arm64"
      sha256 "308162927c5c66a3eecdc26bcdb32ba7c6edb943ee0615e49fd987f2b51fa32f"
    else
      url "https://static.ampcode.com/cli/0.0.1790265644-gf7438f/amp-darwin-x64"
      sha256 "bd14ef74e3a9629bf27de6ed7f1b0367fc28ff7e158a38aabc133a2805180507"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790265644-gf7438f/amp-linux-arm64"
      sha256 "23f81753cca8d5af84c54d6df1385611bb889de8c8655134c73c617ab65b8105"
    else
      url "https://static.ampcode.com/cli/0.0.1790265644-gf7438f/amp-linux-x64"
      sha256 "9bd357917ea79a0c0abfa6f7b20570fbae683ccf16579aee94937f5eac8181f7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
