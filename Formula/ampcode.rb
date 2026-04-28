class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777358848-g9dd2c5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777358848-g9dd2c5/amp-darwin-arm64"
      sha256 "2c2a70c8d3e68127f3a117472e6b49423404ec946b733ee0fc66e744b18a1c29"
    else
      url "https://static.ampcode.com/cli/0.0.1777358848-g9dd2c5/amp-darwin-x64"
      sha256 "1de2df58a2a60f7ffcf530dbf61ec70109956930a74a78281707e7590632c4f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777358848-g9dd2c5/amp-linux-arm64"
      sha256 "183cf380c1c6468a7740caa1b6ad9e7fdfa179faddca70e843beb31e145c7bac"
    else
      url "https://static.ampcode.com/cli/0.0.1777358848-g9dd2c5/amp-linux-x64"
      sha256 "bcec53777fd51d77170bef0c6055cc57c9c513891c861b8281f2b6d023bce436"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
