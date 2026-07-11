class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783746011-gee8baf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783746011-gee8baf/amp-darwin-arm64"
      sha256 "0f69b23a681b73fd3b9a4719271f7020d7bb12cef1f83e86146c8009c3c7575b"
    else
      url "https://static.ampcode.com/cli/0.0.1783746011-gee8baf/amp-darwin-x64"
      sha256 "cbcba84bcea8afb1116fbad007625b16321e33d0dc8579cedaaa100935d98326"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783746011-gee8baf/amp-linux-arm64"
      sha256 "6de7910e084220531f93a4be6f0bb7849c27488c6886d674d7e6db3470224c89"
    else
      url "https://static.ampcode.com/cli/0.0.1783746011-gee8baf/amp-linux-x64"
      sha256 "1709a45147fee80ab603e6bc0092cb3963ff9f558f08fd9d2ea279413d56e853"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
