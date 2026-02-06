class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770415269-g2c49f6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770415269-g2c49f6/amp-darwin-arm64"
      sha256 "e87f95d05872b79941b705eaa434f137c3e47f38fe455e9bb0b8d33bfe7c5c5b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770415269-g2c49f6/amp-darwin-x64"
      sha256 "cec1447122ea2ea9ddaa26e79ca1e948707abc4b56d02aaf6ada583c1d7e407f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770415269-g2c49f6/amp-linux-arm64"
      sha256 "4867724f8c994d2e6350d457422dd4a55450913faafad94c3bbdb1c9214ab1cc"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770415269-g2c49f6/amp-linux-x64"
      sha256 "6a54fad9472580ee3ab07ef83fb57c30799298c9ac1b539a3cecb335f27758b4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
