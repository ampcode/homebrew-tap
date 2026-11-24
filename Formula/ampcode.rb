class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795492832-gd47416"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795492832-gd47416/amp-darwin-arm64"
      sha256 "9bf45667758d9ec7ae7bc61ff78c5124433024611ab65d505b2faa24e0523ba8"
    else
      url "https://static.ampcode.com/cli/0.0.1795492832-gd47416/amp-darwin-x64"
      sha256 "7f71205a6072a2a54766037053a522fdacf8bce534027218f6f9ad9cf644b0c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795492832-gd47416/amp-linux-arm64"
      sha256 "2d60b2f824be35725b6b7d2e3c8c7a6143c17f4637e26a3d33fe8ae13fd52a54"
    else
      url "https://static.ampcode.com/cli/0.0.1795492832-gd47416/amp-linux-x64"
      sha256 "284e5130453ee1980553d4463b4a35c10b0b59dc95c688ea044bb55fc74e4597"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
