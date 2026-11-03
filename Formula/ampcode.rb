class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793682830-gad461e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793682830-gad461e/amp-darwin-arm64"
      sha256 "b2cb850f827f5ddf0f5b73520d96ea345362543978b25d01e31cb9dec69abc94"
    else
      url "https://static.ampcode.com/cli/0.0.1793682830-gad461e/amp-darwin-x64"
      sha256 "01b77de9a67604343e50ff660f69ba87b0ebe3d8f70518462ef00528d4110bc9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793682830-gad461e/amp-linux-arm64"
      sha256 "15c112a5976a35f1fbde5d69ddfa8bd26c13d0d017c051f0b5d52682d487ae20"
    else
      url "https://static.ampcode.com/cli/0.0.1793682830-gad461e/amp-linux-x64"
      sha256 "7f133b37040c3b6f0f96c22c8ab156e2ae19b8d671d67d23479eb1467fcf1cd3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
