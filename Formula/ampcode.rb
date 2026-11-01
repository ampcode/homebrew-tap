class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793491262-ga7b498"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793491262-ga7b498/amp-darwin-arm64"
      sha256 "c974da42a9913903ca39ef244a47879eb399790171ebb77ecaf7fb5388c8f1d3"
    else
      url "https://static.ampcode.com/cli/0.0.1793491262-ga7b498/amp-darwin-x64"
      sha256 "3fe958c187a1af18fcebb354fbc93b846389d33dae4ee2c294a328157c21c0c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793491262-ga7b498/amp-linux-arm64"
      sha256 "1632fc6af486b14dfcc0bd6fff21773947387f3f856ab859b11dee53de6b926a"
    else
      url "https://static.ampcode.com/cli/0.0.1793491262-ga7b498/amp-linux-x64"
      sha256 "ef0f8c79475792788a433b46544ce181e90ebbf6aed48fb88ed2b091a3c293a0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
