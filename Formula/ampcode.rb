class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789430490-gb63576"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789430490-gb63576/amp-darwin-arm64"
      sha256 "d9324e7c13d63fa26be44008d0bebb54d4d810ebce2ac8c6a48701fee09e481a"
    else
      url "https://static.ampcode.com/cli/0.0.1789430490-gb63576/amp-darwin-x64"
      sha256 "70a5cde11aebbb252d9d0289e389369dd4fe1d79451f5c6e7edffbf61af9ce7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789430490-gb63576/amp-linux-arm64"
      sha256 "01c6cbed51251453b8ba89233a7d75527aa048ae1b46350cff7057805bc33d36"
    else
      url "https://static.ampcode.com/cli/0.0.1789430490-gb63576/amp-linux-x64"
      sha256 "7f6e4718d5763b8a393dd2f580d8f634f7d3b1eb87457fd3c8e6d9346ab2fd22"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
