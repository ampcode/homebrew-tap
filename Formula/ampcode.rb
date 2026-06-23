class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782212837-g0fdbd3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782212837-g0fdbd3/amp-darwin-arm64"
      sha256 "e00c23099cf153cc28041e4c3066abc5e452729afe765dc9d0be2b477f5dfc1b"
    else
      url "https://static.ampcode.com/cli/0.0.1782212837-g0fdbd3/amp-darwin-x64"
      sha256 "dac92a23212b6bbb25039b8eb88ec8a403aa0b99a181bfbcab4203b6e5af24ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782212837-g0fdbd3/amp-linux-arm64"
      sha256 "53a6c6c8458ed071a6dc4c6e2f8289d619c3f10e8a803c20952f2ea55ba57785"
    else
      url "https://static.ampcode.com/cli/0.0.1782212837-g0fdbd3/amp-linux-x64"
      sha256 "bdb84329b13963b0d76526831a84dab579be42026554eda0114cdffc0f1792a7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
