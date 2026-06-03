class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780520317-g314470"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780520317-g314470/amp-darwin-arm64"
      sha256 "cb09f81ebbd41335e88a3dc8edaacfd737ee872d5bb090499072748d99d63dff"
    else
      url "https://static.ampcode.com/cli/0.0.1780520317-g314470/amp-darwin-x64"
      sha256 "cbea9b2668664dcccd593d2fb39370c9f9f3ef8d721e1d5e956deb3f5d79989e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780520317-g314470/amp-linux-arm64"
      sha256 "a0210ebda23957ac585ff1ce12d1bc90db82f6d135c0e89668f5bb5cd4ad169e"
    else
      url "https://static.ampcode.com/cli/0.0.1780520317-g314470/amp-linux-x64"
      sha256 "48dcf5c8457e565ff33b9bec1dab62637ebc1c5ee93c9821964ef3fb1cc94dea"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
