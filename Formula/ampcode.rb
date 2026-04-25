class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777123895-g19717a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777123895-g19717a/amp-darwin-arm64"
      sha256 "246b15991d68429872e5151e2d4daf9a8518952a2c1cf6906a98fdab29d21b88"
    else
      url "https://static.ampcode.com/cli/0.0.1777123895-g19717a/amp-darwin-x64"
      sha256 "24a1f83673a561e29d92b0a010b4a87020b93048f12ad65aa05dc75552770ff6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777123895-g19717a/amp-linux-arm64"
      sha256 "415aefdea0dbf5d692cb70a1d22a37dd195a17bcf22437fadb0a62a8a00c40d2"
    else
      url "https://static.ampcode.com/cli/0.0.1777123895-g19717a/amp-linux-x64"
      sha256 "878bf5c21b58bf7589adee51a67b89f4c4f7e4b3be6639d9d7a117be5869603e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
