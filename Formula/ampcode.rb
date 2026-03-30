class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774859181-g7c41c7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774859181-g7c41c7/amp-darwin-arm64"
      sha256 "5e1b4862ac6a29a015294e4aae508256a7b5422cdff3cbc0bf29a653fd861aa3"
    else
      url "https://static.ampcode.com/cli/0.0.1774859181-g7c41c7/amp-darwin-x64"
      sha256 "07ccd37f298c4a4136cbcf09242c555e1d3508d04ba292537aeb26962ecc4f98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774859181-g7c41c7/amp-linux-arm64"
      sha256 "b27e5aacb920d3144594ad3ed04c8da06ebeb1baabf0de13b9e7724a57053fb5"
    else
      url "https://static.ampcode.com/cli/0.0.1774859181-g7c41c7/amp-linux-x64"
      sha256 "886d6015c75b966f30063803c6058ef3bd3a8245cba17462dfa9f62966af77cd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
