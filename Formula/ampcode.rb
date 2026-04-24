class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777024750-g86f95a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777024750-g86f95a/amp-darwin-arm64"
      sha256 "c1cc9954b0e8b20d71e5246b3c961807e1407376493798cdcb18cc95c6250e8a"
    else
      url "https://static.ampcode.com/cli/0.0.1777024750-g86f95a/amp-darwin-x64"
      sha256 "d23195ad732f608ce6bace41c023648d6d36f7e1a8860c4b10b4c9c3ac51ee38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777024750-g86f95a/amp-linux-arm64"
      sha256 "def119cf40af1a1d37435b33501b07da506c5830e824b87011d5563d8913e9ce"
    else
      url "https://static.ampcode.com/cli/0.0.1777024750-g86f95a/amp-linux-x64"
      sha256 "3169f3c6a5f136118f8dc5c09f1610957048cd52b1957f0a40437cc3e1dff5d2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
