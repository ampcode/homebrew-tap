class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777351004-g64ae1a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777351004-g64ae1a/amp-darwin-arm64"
      sha256 "e38550bef76b427a41158e1ec9877300c1c224b96e623a814bdd31494dd18ce6"
    else
      url "https://static.ampcode.com/cli/0.0.1777351004-g64ae1a/amp-darwin-x64"
      sha256 "2125c2140034ff0f0a694d63778bc243a302d4487200f8918043a97e0b49c9ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777351004-g64ae1a/amp-linux-arm64"
      sha256 "6d93bda79268262892659c603d459d95be11c976b5357d1a2d0bf6104bcf7220"
    else
      url "https://static.ampcode.com/cli/0.0.1777351004-g64ae1a/amp-linux-x64"
      sha256 "fa2c52e204cce3ab769c0d87d1179b98a42578d2abc3f81286cdec876dd1fab9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
