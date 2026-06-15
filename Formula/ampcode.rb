class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781520882-g052ab5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781520882-g052ab5/amp-darwin-arm64"
      sha256 "0d91de2d09caed2381b352ed30c017fb42a0e6a510954218517ab9a2463319d9"
    else
      url "https://static.ampcode.com/cli/0.0.1781520882-g052ab5/amp-darwin-x64"
      sha256 "718dfc3b1d05757cdcc1f840d0938228af7559333d0d49968d2d78ae2078370d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781520882-g052ab5/amp-linux-arm64"
      sha256 "c748a5ce53077aa1d6f4f5dfd76cff12cb228d38760329421aac345277bcc325"
    else
      url "https://static.ampcode.com/cli/0.0.1781520882-g052ab5/amp-linux-x64"
      sha256 "04f4e4d5891bb577ca908964d4d6b27ba77b3ed34e0ad370ff6fc28c60560750"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
