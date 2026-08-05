class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785961745-gfab117"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785961745-gfab117/amp-darwin-arm64"
      sha256 "f364c8d44bfc2371797950ec63b48c78e832c473fdfa1e1437c2e0b65b5d28a6"
    else
      url "https://static.ampcode.com/cli/0.0.1785961745-gfab117/amp-darwin-x64"
      sha256 "74410dfb6cb6be30510f1304028af1d99d51c6fc20dc8b3d4f37d3a4e26f9f25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785961745-gfab117/amp-linux-arm64"
      sha256 "d343fbec8825c1d3992efe7295c79dd56520cc17c5f042a1e221c70cd62d6b8e"
    else
      url "https://static.ampcode.com/cli/0.0.1785961745-gfab117/amp-linux-x64"
      sha256 "073af4c3cf002a221c564904c47e4d5f638c36be209bd11c0bba87a3a13d0946"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
