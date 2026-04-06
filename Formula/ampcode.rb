class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775451177-g375434"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775451177-g375434/amp-darwin-arm64"
      sha256 "63e60ee134c4f6331691f6373d37a160dfb6f2e489a4e793222e56b2032bae0e"
    else
      url "https://static.ampcode.com/cli/0.0.1775451177-g375434/amp-darwin-x64"
      sha256 "1e72ecd7d129a84715ce98a151dbd733a985159979c46c5385c60ea71a4754f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775451177-g375434/amp-linux-arm64"
      sha256 "f05d97a1c7c5b2afb6bb9b7774308013723d101c6371cf86e5ca9c01725feeb3"
    else
      url "https://static.ampcode.com/cli/0.0.1775451177-g375434/amp-linux-x64"
      sha256 "cee61ad32fcb66a6a3d5ce398447a29cee624959a8b58ea5e815135e54ac1a12"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
