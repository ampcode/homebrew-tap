class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793462430-g2650be"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793462430-g2650be/amp-darwin-arm64"
      sha256 "b7f319eddbea7cb83f627f300a1936c26bbe2a8ec3be138a026ee47e65393bc1"
    else
      url "https://static.ampcode.com/cli/0.0.1793462430-g2650be/amp-darwin-x64"
      sha256 "14ce5f0faba4e25f9c3f9afa2126e02acfe00a0a56c64e1388edc4b792c6172c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793462430-g2650be/amp-linux-arm64"
      sha256 "eba766cc937a4b317669366adcf04145247f329ca99ffa46784556e198320f90"
    else
      url "https://static.ampcode.com/cli/0.0.1793462430-g2650be/amp-linux-x64"
      sha256 "2afedd7b161c5089787cfac44e956c44a7e93b96cff69cd390cd631969294dea"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
