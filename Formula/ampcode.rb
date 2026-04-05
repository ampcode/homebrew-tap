class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775405116-g406649"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775405116-g406649/amp-darwin-arm64"
      sha256 "ffa9d5165e081a535627940dac52d613a89c9d782b24feb7a71533316d754b88"
    else
      url "https://static.ampcode.com/cli/0.0.1775405116-g406649/amp-darwin-x64"
      sha256 "6938a24e222ba93e98173de98707a4c1095bf04f60ba5f10293029dd92d88f47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775405116-g406649/amp-linux-arm64"
      sha256 "caad96f0630a3e076d78c9ca06d918388ac555d8aa4af2af96f91609f2bea847"
    else
      url "https://static.ampcode.com/cli/0.0.1775405116-g406649/amp-linux-x64"
      sha256 "4790894ba19c015eec4d23d94a0373bd439286ab0c33f014427961d15f1d1109"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
