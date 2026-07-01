class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782896528-g8d3843"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782896528-g8d3843/amp-darwin-arm64"
      sha256 "15fb998b6ce24c2ce55403c7ac38a260bae24bb3009a687862fd5314517e9be9"
    else
      url "https://static.ampcode.com/cli/0.0.1782896528-g8d3843/amp-darwin-x64"
      sha256 "0ff5e4407f91669835742efc625aec30701a57eddc7718def2e17216169426ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782896528-g8d3843/amp-linux-arm64"
      sha256 "7273c361717ea3f953d6875453aa4f310703de64bfd6a21584395c3f5f93309a"
    else
      url "https://static.ampcode.com/cli/0.0.1782896528-g8d3843/amp-linux-x64"
      sha256 "026519e39bec03e33bfcd34096e8318d58c96a7ee998e5ef9bace76f7d619c02"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
