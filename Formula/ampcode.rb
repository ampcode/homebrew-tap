class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777379234-g9faea3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777379234-g9faea3/amp-darwin-arm64"
      sha256 "3ef2c14124e601e4d7796594af78c8e20a5b9f7a8b72f245665a6827109ccfef"
    else
      url "https://static.ampcode.com/cli/0.0.1777379234-g9faea3/amp-darwin-x64"
      sha256 "16e22f19c273057af3d13b073ac5c219f70e30bced8482ccadb4c429bd0e708d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777379234-g9faea3/amp-linux-arm64"
      sha256 "2212ab558ee52dad5c7af54815c09a71f793f845a36d7b525d216e6430741170"
    else
      url "https://static.ampcode.com/cli/0.0.1777379234-g9faea3/amp-linux-x64"
      sha256 "ae79c785dc4a710d71410c78a39ece819b6799e2fa1d56a1e08845b146f3ca15"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
