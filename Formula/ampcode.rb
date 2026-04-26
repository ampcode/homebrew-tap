class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777179559-g92465f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777179559-g92465f/amp-darwin-arm64"
      sha256 "1fe9626528235cdbba2e558469fbd754c5fd8e092aece6cd9789f4cdf89b3775"
    else
      url "https://static.ampcode.com/cli/0.0.1777179559-g92465f/amp-darwin-x64"
      sha256 "b511e7b25f6bfca415cf0e7c12586633b24669ee850a0ff5793f1b68ddd73a1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777179559-g92465f/amp-linux-arm64"
      sha256 "16212464e500538c00706d6e709f729fb1fb779ed8c0b8252b9221ee659cafe3"
    else
      url "https://static.ampcode.com/cli/0.0.1777179559-g92465f/amp-linux-x64"
      sha256 "457d87b145b12ae14d72e44d76cd22347e6e545c20ec40de92934b5fa2531cb4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
