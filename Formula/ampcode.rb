class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777824750-g77792d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777824750-g77792d/amp-darwin-arm64"
      sha256 "47bcc84505a5a6d1436ecc30807a34d2128344db4cbc3dcfaae69c179d8f834d"
    else
      url "https://static.ampcode.com/cli/0.0.1777824750-g77792d/amp-darwin-x64"
      sha256 "659c6b123c57787e3925f58e525644c1032574b18b9b215bb954a2b37193ae32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777824750-g77792d/amp-linux-arm64"
      sha256 "3c88aa11c43c8122f883d109649367e5af077616f851f513ec0f36bd6585d0a2"
    else
      url "https://static.ampcode.com/cli/0.0.1777824750-g77792d/amp-linux-x64"
      sha256 "b98617f4fee0c8bf87f4e434cee1f02ee95d1b9623db174e91e86d45a85ff359"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
