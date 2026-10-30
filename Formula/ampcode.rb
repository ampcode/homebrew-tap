class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793357459-g59d18a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793357459-g59d18a/amp-darwin-arm64"
      sha256 "01b185f39e65a34b2ca7c4b70a26610a440d188287581de255f5acf575c9b884"
    else
      url "https://static.ampcode.com/cli/0.0.1793357459-g59d18a/amp-darwin-x64"
      sha256 "ce069a665af05b484537eac110041e0e70a6c93cce184bee4798924b2a80a3f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793357459-g59d18a/amp-linux-arm64"
      sha256 "25db6eceedf97abc4870230a4aeb84a96d2c2b13d7422eefaea8316234b37706"
    else
      url "https://static.ampcode.com/cli/0.0.1793357459-g59d18a/amp-linux-x64"
      sha256 "f66059350faefd352ae20000d039bad640523a5a0ed108e53a076c8f04509308"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
