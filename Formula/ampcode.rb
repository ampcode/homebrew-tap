class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788451246-g8f0e5f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788451246-g8f0e5f/amp-darwin-arm64"
      sha256 "4cbaed4a3a383185340ceb1cbcae2ac6362d15d7c99d5818553e7aba429f287c"
    else
      url "https://static.ampcode.com/cli/0.0.1788451246-g8f0e5f/amp-darwin-x64"
      sha256 "53ed8b1980047d7482cdefa79ee9b15807ee40847c0540ca5b27811ae0ea4504"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788451246-g8f0e5f/amp-linux-arm64"
      sha256 "e719d3cfec54750d5c7511aac98d28180c4e2685620ba443dea829e9ebd76a57"
    else
      url "https://static.ampcode.com/cli/0.0.1788451246-g8f0e5f/amp-linux-x64"
      sha256 "65ec15bf1923e2bcbd3485c7c1c51409d675513d1d17c024e2be500452454c16"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
