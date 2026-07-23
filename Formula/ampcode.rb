class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784809706-g96cc8a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784809706-g96cc8a/amp-darwin-arm64"
      sha256 "4fa5baefcf57231dfec0fcb6437371a6d32c29f7e637854e33af90355fddf3c4"
    else
      url "https://static.ampcode.com/cli/0.0.1784809706-g96cc8a/amp-darwin-x64"
      sha256 "68dd55c917eb54480fe8170f8350d911ea97006c7c3101fd5e910e915967fd8d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784809706-g96cc8a/amp-linux-arm64"
      sha256 "499c1d47ff7dc354f312d637c8d5519ead091d972214f9e1bd02f943c961c165"
    else
      url "https://static.ampcode.com/cli/0.0.1784809706-g96cc8a/amp-linux-x64"
      sha256 "4984f1a2f3a72fd6e08345a1074fb5484cdff1e41b60dec620be1dcea34413f8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
