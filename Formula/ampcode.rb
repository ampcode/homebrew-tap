class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777076476-ge780d5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777076476-ge780d5/amp-darwin-arm64"
      sha256 "0dc8f3bc6554add47d0c78b0330dedba3685a77cf1c80405a8fef70cc94b00c7"
    else
      url "https://static.ampcode.com/cli/0.0.1777076476-ge780d5/amp-darwin-x64"
      sha256 "efe8648ab304ff5545f79e0571ea908d1ec2494e173ef0e7b5249d95d4c54a88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777076476-ge780d5/amp-linux-arm64"
      sha256 "ebc5c735c6e6994844d0fe44fdec3390e7b2310c26911558f1c56a6963a1fdeb"
    else
      url "https://static.ampcode.com/cli/0.0.1777076476-ge780d5/amp-linux-x64"
      sha256 "15024c0e626a48e150e30ad10f1799c4ff83b81c0f8b8379a352089fcb7ee260"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
