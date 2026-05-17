class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779003005-g35ddd7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779003005-g35ddd7/amp-darwin-arm64"
      sha256 "61199238aed44e18623cb3aee24c9a807709248b18a76b73117f0aaa0d65fbc7"
    else
      url "https://static.ampcode.com/cli/0.0.1779003005-g35ddd7/amp-darwin-x64"
      sha256 "956982ae53efb975be77252a8951fd4b2501f98d0941ebdfbe2d8d585ae4ba7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779003005-g35ddd7/amp-linux-arm64"
      sha256 "2bace2d9718e173ac986d4bd1bee2129cd8fd5936089e4608a985a1b1b30ae9d"
    else
      url "https://static.ampcode.com/cli/0.0.1779003005-g35ddd7/amp-linux-x64"
      sha256 "5d8cde8ef0c6121186e2b958ebe5769be03eaf69dfec9dc6c59346637e0f50af"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
