class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782525116-g47f525"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782525116-g47f525/amp-darwin-arm64"
      sha256 "8917423bc9d14b126845ad26c5e4786fa9a145cb4bf816ca5d900e38ffc36363"
    else
      url "https://static.ampcode.com/cli/0.0.1782525116-g47f525/amp-darwin-x64"
      sha256 "690ca67a1890d1c64fe99cf50c695fdcf775fa8f4396178aff0948ccd1cc8003"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782525116-g47f525/amp-linux-arm64"
      sha256 "bdae68c081e53ab5120456a8c4d8f8867be0cc70f39ed53141c7f83ed4091d36"
    else
      url "https://static.ampcode.com/cli/0.0.1782525116-g47f525/amp-linux-x64"
      sha256 "596d2f5ee08c02e4a554159ce428d52e07be1fc73bd20d2084b6915877acf808"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
