class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774613332-g28728c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774613332-g28728c/amp-darwin-arm64"
      sha256 "3f3e0ea9509713c37ef67ee2dd354b54e39578e756f461de537dd21a4f21c437"
    else
      url "https://static.ampcode.com/cli/0.0.1774613332-g28728c/amp-darwin-x64"
      sha256 "a86d64fa5e7b92a637e1ea73eec06b403f45295d786a04668deb99a0a3f7bae2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774613332-g28728c/amp-linux-arm64"
      sha256 "d4326749928476eb260818337279302273b2b87c8582853fce71a168be9e118d"
    else
      url "https://static.ampcode.com/cli/0.0.1774613332-g28728c/amp-linux-x64"
      sha256 "ac7f732e0b8bce1b04d61a30127ce82d6126796ccfdd8e58d41310fbbd8efdff"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
