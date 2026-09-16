class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789549843-gf041d8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789549843-gf041d8/amp-darwin-arm64"
      sha256 "d829f1a74813b4a7d14871c6bbc76bb7eafd6ada022685414368b2e9b39fa4fd"
    else
      url "https://static.ampcode.com/cli/0.0.1789549843-gf041d8/amp-darwin-x64"
      sha256 "f325ae2377e5f451f3474335a55788086c95c1bc427431195545131062dc57db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789549843-gf041d8/amp-linux-arm64"
      sha256 "3f9cff5f9d63f0143fa1b31970d80c618e3bad1c2914f473d2240f7cda9a1243"
    else
      url "https://static.ampcode.com/cli/0.0.1789549843-gf041d8/amp-linux-x64"
      sha256 "80b20ad1768727f4904ca9e59b1865a87bb1cfe955159366175cac8c241bf75c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
