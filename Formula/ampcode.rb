class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779901450-g2f8f5b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779901450-g2f8f5b/amp-darwin-arm64"
      sha256 "f07d16b418fc4e7126c3ebd279cd81df6961bc6c37417dd0f29b8bbf1a605a1d"
    else
      url "https://static.ampcode.com/cli/0.0.1779901450-g2f8f5b/amp-darwin-x64"
      sha256 "b6926521a54c33d46039c3b2c16f74df3ad941757d95d8f966565f290e2f74cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779901450-g2f8f5b/amp-linux-arm64"
      sha256 "19142f766b7a3e6c20b676b4f2dc59c85908e66160639ccad0c81d2a19178fd9"
    else
      url "https://static.ampcode.com/cli/0.0.1779901450-g2f8f5b/amp-linux-x64"
      sha256 "3834a70069e7d041b97a9f0deab3552c7189b9a4982c0177589945976d4786ed"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
