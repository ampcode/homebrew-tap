class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788796834-g600a1b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788796834-g600a1b/amp-darwin-arm64"
      sha256 "fa69c9ff22118e6e94b879d38e014970b070169db8b7d05853cd91ccc380ad78"
    else
      url "https://static.ampcode.com/cli/0.0.1788796834-g600a1b/amp-darwin-x64"
      sha256 "97707af479c44dc8b19f341271b258b04024fa69a578b9f45eb98b64401d1d84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788796834-g600a1b/amp-linux-arm64"
      sha256 "660f456959c74bb55d1aedc9f71af33914a40ea6fe02ede30a1fb96cc3339677"
    else
      url "https://static.ampcode.com/cli/0.0.1788796834-g600a1b/amp-linux-x64"
      sha256 "0f9f9ab02f706fd4949f2f818f06b9b22cf099b4db175c099c32643c6083f33f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
