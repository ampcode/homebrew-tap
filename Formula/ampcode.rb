class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780750825-g9a754d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780750825-g9a754d/amp-darwin-arm64"
      sha256 "2010044c5ee2be70179d6cb2fda5c1308f00691894c0e1e5bbcf02c0fa10b191"
    else
      url "https://static.ampcode.com/cli/0.0.1780750825-g9a754d/amp-darwin-x64"
      sha256 "728a62ad8dead5e779b7c109067437fc05563986c0a48f9a7cfbd8f0c3138518"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780750825-g9a754d/amp-linux-arm64"
      sha256 "a527e542fffe1fccc7c244266e9d3fc6b895c2132f8e104aa441f7013c6b21d9"
    else
      url "https://static.ampcode.com/cli/0.0.1780750825-g9a754d/amp-linux-x64"
      sha256 "dfb0d16d7596a18e466cccf9b2615ec1f08de74ca2546d0594326e732e9638b9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
