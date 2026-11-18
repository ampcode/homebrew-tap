class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795003241-ge3b346"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795003241-ge3b346/amp-darwin-arm64"
      sha256 "06d79e1763f8fa5f1f3a97fe064029148054a52bc588521f6e27076f1bb27086"
    else
      url "https://static.ampcode.com/cli/0.0.1795003241-ge3b346/amp-darwin-x64"
      sha256 "1026d9f5000bcf36290a1aef019b56dd9593813fe2dd0bfdc86c246ef94d2bb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795003241-ge3b346/amp-linux-arm64"
      sha256 "1c8a9cf1ed7d2f67bd16b3641e54cdd62811bd1039c2b477ff773b0c96056866"
    else
      url "https://static.ampcode.com/cli/0.0.1795003241-ge3b346/amp-linux-x64"
      sha256 "09a3dbf09a7fca269f34b3f6a44a700d440359c09e95bf3dad14e8563981e6fb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
