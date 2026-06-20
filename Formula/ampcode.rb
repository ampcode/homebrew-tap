class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781989205-gc5070f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781989205-gc5070f/amp-darwin-arm64"
      sha256 "64f21895bec19cdb0a67cce98bd15920b3c112612400ddc2120a87ea09668c49"
    else
      url "https://static.ampcode.com/cli/0.0.1781989205-gc5070f/amp-darwin-x64"
      sha256 "297edde0e79fe06779e9801834dd7f9b03dc5f2685580a6b832fc193a048c68f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781989205-gc5070f/amp-linux-arm64"
      sha256 "47fa5efe5251c52601447564961b41103738822725d2df8ab5f703461fff1f70"
    else
      url "https://static.ampcode.com/cli/0.0.1781989205-gc5070f/amp-linux-x64"
      sha256 "963f46333dd09d96a3222c406750be7f5ab73c24f7fa042ce3879f541be7ffec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
