class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774166594-g1f8c04d1"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774166594-g1f8c04d1/amp-darwin-arm64"
      sha256 "e8af3338696d5d40154521c7b2b214ce8d5a36c4af5a7af9b233e8c3dc286b2c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774166594-g1f8c04d1/amp-darwin-x64"
      sha256 "7ad791eb2ee891aadad15c4f1d98df0fa9e17db10e691ac80719d359a8846c7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774166594-g1f8c04d1/amp-linux-arm64"
      sha256 "38acc8b03372ae100da51c5c161820f8a5960328d171eec13f4ac3ec340a13e4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774166594-g1f8c04d1/amp-linux-x64"
      sha256 "1f1ac5100c690399a3ac3b0c50726e8924d125ed77aca4a64d5417eb6984b014"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
