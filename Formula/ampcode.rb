class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786565549-g82d377"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786565549-g82d377/amp-darwin-arm64"
      sha256 "ace6deecd0cf463b697b72a1872deb00f5a81ccf4efeb7f0aedfbe5bd2b741c6"
    else
      url "https://static.ampcode.com/cli/0.0.1786565549-g82d377/amp-darwin-x64"
      sha256 "449ac2e3d438f34c36dc87a2ccf53b6a7b4895d149713680ce2bf8595ea35be3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786565549-g82d377/amp-linux-arm64"
      sha256 "fb79a9314d01f63ec20622847f76005dcac233cda49bd25fb677fc490a509560"
    else
      url "https://static.ampcode.com/cli/0.0.1786565549-g82d377/amp-linux-x64"
      sha256 "a7057e6a483bb0ba6d36adc269e2d2ec5dff6ddce7c3eed5a7a6f56a4257f212"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
