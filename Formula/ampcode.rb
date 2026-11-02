class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793649628-g18d621"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793649628-g18d621/amp-darwin-arm64"
      sha256 "fbe235663373ff75db225fac9a7c634e47fdb668482583524e26a40a7275cf3f"
    else
      url "https://static.ampcode.com/cli/0.0.1793649628-g18d621/amp-darwin-x64"
      sha256 "1069bda30a3bcbf00551d943d0abb5ccf269fa6f57e5a82ceed4ea4ab446a616"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793649628-g18d621/amp-linux-arm64"
      sha256 "86cf4bb7e76a59b14e1280d02e7f532ecf770749261d18d783a858dadc61b9d8"
    else
      url "https://static.ampcode.com/cli/0.0.1793649628-g18d621/amp-linux-x64"
      sha256 "8968dabe85f0f2c5d54a82f10bd23120a939c911c797f4e7441f55a729125844"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
