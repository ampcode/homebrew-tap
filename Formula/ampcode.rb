class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792991933-g65080c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792991933-g65080c/amp-darwin-arm64"
      sha256 "943e85d2fdcea7e4263a020b53fa35de449048f9a71195c081030efb88d2491c"
    else
      url "https://static.ampcode.com/cli/0.0.1792991933-g65080c/amp-darwin-x64"
      sha256 "e1b7ed2a097f76a569d3b2644e8dd451f5dfe78b94e04bd36593d6d031271151"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792991933-g65080c/amp-linux-arm64"
      sha256 "0604596b6deddb6054e12d87a87c9420d81047ff37e52fa6da1588253da7ec5f"
    else
      url "https://static.ampcode.com/cli/0.0.1792991933-g65080c/amp-linux-x64"
      sha256 "7c8cf3c724729379fba359c0625b95b3f55dc1806ad91b57d5de0f4f47dba8a9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
