class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782827731-g0eabfc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782827731-g0eabfc/amp-darwin-arm64"
      sha256 "8a2c29681b87e3309dc6e12c930acefa26b60aafc3962c6a5192dc98eb3ba12a"
    else
      url "https://static.ampcode.com/cli/0.0.1782827731-g0eabfc/amp-darwin-x64"
      sha256 "e33e0bed3183b934350d81b2a392ad024308de4332be436af43aeed83842ebc6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782827731-g0eabfc/amp-linux-arm64"
      sha256 "7a63feca8971db6b2a8f437837151edf723d3414c779f0a7b9a0889e3670a73c"
    else
      url "https://static.ampcode.com/cli/0.0.1782827731-g0eabfc/amp-linux-x64"
      sha256 "c124ee8b5ee8eea01c68d5b8e7999d1bcf3e4101305e915b6205b5a4068ee8dc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
