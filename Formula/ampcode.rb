class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780564400-g2007df"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780564400-g2007df/amp-darwin-arm64"
      sha256 "06194b426652f85ada8d35a33a08b4443df5cd66e1cf7baf1c8649a267e79d0a"
    else
      url "https://static.ampcode.com/cli/0.0.1780564400-g2007df/amp-darwin-x64"
      sha256 "17df577885781d9b05a2579f2326a57112a2dcbe05c082df203de85e9f4ba8b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780564400-g2007df/amp-linux-arm64"
      sha256 "81ba885e8649676fa0fe671f5070bdf4e9dc6880d934fadc67290498007684d8"
    else
      url "https://static.ampcode.com/cli/0.0.1780564400-g2007df/amp-linux-x64"
      sha256 "b11496a0312a49a4e12ae0b25ce6379be549b800c86f0cb1053dea18243a42a6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
