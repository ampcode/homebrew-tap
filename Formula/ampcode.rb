class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776908924-gbce052"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776908924-gbce052/amp-darwin-arm64"
      sha256 "5be727ea601b1886db97144e4997930ee93489f7c4c869015c6d5fe62234c0bb"
    else
      url "https://static.ampcode.com/cli/0.0.1776908924-gbce052/amp-darwin-x64"
      sha256 "73495b7d2f977112c485bcda1b09967f8f0deeb1a2e02672687ddaa21a6e501c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776908924-gbce052/amp-linux-arm64"
      sha256 "c9fdf1adf08e66341ef65452fb3ad8797deb00532bd9364ac5a5ffa4384291fa"
    else
      url "https://static.ampcode.com/cli/0.0.1776908924-gbce052/amp-linux-x64"
      sha256 "46de9e4f7d8759b252c7fcca356f2ad74434078ac8779b49510f23c591d0f84f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
