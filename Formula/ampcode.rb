class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790299142-gbbd933"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790299142-gbbd933/amp-darwin-arm64"
      sha256 "e12e5848b1c29c0febe407d0526138fa46e62a18390308efd79fda2f60a24adb"
    else
      url "https://static.ampcode.com/cli/0.0.1790299142-gbbd933/amp-darwin-x64"
      sha256 "8b9b4853347bb9e38ac54ac9789ed61c2d470da73ab7b29f9fbcf68cd2a17174"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790299142-gbbd933/amp-linux-arm64"
      sha256 "657fa3e2e1a4aface38f8f9b6daaf047c996b69d5a44076cc2c608c2eacb1078"
    else
      url "https://static.ampcode.com/cli/0.0.1790299142-gbbd933/amp-linux-x64"
      sha256 "9762535dd9197981f7f1e1fc47c2057c171238b0b76c8c44d037a81ca10bfc84"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
