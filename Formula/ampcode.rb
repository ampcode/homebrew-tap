class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782407087-g8e6560"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782407087-g8e6560/amp-darwin-arm64"
      sha256 "1a4792f51d0090de6286ccff8fe3fbd36505623c4e0f3522688bd9a138d1ee2d"
    else
      url "https://static.ampcode.com/cli/0.0.1782407087-g8e6560/amp-darwin-x64"
      sha256 "9446b70e62da0b2d4ea752705a70fe826d7af620b29e0f9f6ea3a4004d48573c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782407087-g8e6560/amp-linux-arm64"
      sha256 "c99a2e5057d23c10b267d61893b2b590c21ef7e5af24413654c8e6fad4275c42"
    else
      url "https://static.ampcode.com/cli/0.0.1782407087-g8e6560/amp-linux-x64"
      sha256 "48df35cfeaebb921f8c4e9816cec6fc06458cc42f5cf7007d05d519ba11e19db"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
