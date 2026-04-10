class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775828015-g4f08a0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775828015-g4f08a0/amp-darwin-arm64"
      sha256 "b6f2c9190311b7dce17f12ebd8e2cbb64008067a83681c36a6e06a399b82266b"
    else
      url "https://static.ampcode.com/cli/0.0.1775828015-g4f08a0/amp-darwin-x64"
      sha256 "f17bbaeaf9e532e50314150d8d7deb619bf095fa10f6fc30db787448a77ee20f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775828015-g4f08a0/amp-linux-arm64"
      sha256 "e9ca85b15def5b8bf80c39bcdcfb8e982b55d2c53e54c04794573cc8091c4efd"
    else
      url "https://static.ampcode.com/cli/0.0.1775828015-g4f08a0/amp-linux-x64"
      sha256 "7bb7b87c9fde57200eda5ebda3cbe8dd984ec59e964bb19bacceacef8cf79dcf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
