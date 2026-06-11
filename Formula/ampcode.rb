class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781183584-gaac893"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781183584-gaac893/amp-darwin-arm64"
      sha256 "3679868f3f118623cd6dd2d0ecae92cdbbdc2cc45f8cb8ad4ee913a714286ca4"
    else
      url "https://static.ampcode.com/cli/0.0.1781183584-gaac893/amp-darwin-x64"
      sha256 "2c7cfaeac0e620ceb8e9c776ccdee75eb428628252e9da435fb43227bb81ca00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781183584-gaac893/amp-linux-arm64"
      sha256 "49443ac60b84977d3ecf4906425179952cb4ddd519a6aca837c99ea6ea4bf595"
    else
      url "https://static.ampcode.com/cli/0.0.1781183584-gaac893/amp-linux-x64"
      sha256 "c7eb4ee759fa5bfb0c09aeab4b4395035dbb040dd45fd15de2c2d68332e3fc1a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
