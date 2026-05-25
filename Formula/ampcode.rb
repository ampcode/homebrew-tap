class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779686836-g4ef406"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779686836-g4ef406/amp-darwin-arm64"
      sha256 "0756162849c2ea9b371b8c14d5d35dc1ffcfe1a0ea1dbcbba16fc03c42d5a99c"
    else
      url "https://static.ampcode.com/cli/0.0.1779686836-g4ef406/amp-darwin-x64"
      sha256 "2026b6aab74a46fc0060acda011994e71de3e633c68bfd5dd46e175be2b18750"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779686836-g4ef406/amp-linux-arm64"
      sha256 "6d03f3a03094d14e5cf800e386e487cb7b4a4b79b12a1a693cd0a5d71ac341ad"
    else
      url "https://static.ampcode.com/cli/0.0.1779686836-g4ef406/amp-linux-x64"
      sha256 "b7a5e57f64b9c5c8fd39913edfa08827d589ba94ba4f468f0893441f7b952381"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
