class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783110194-gbf08da"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783110194-gbf08da/amp-darwin-arm64"
      sha256 "1505dd3bba4381534c3fa9f1679ce83d3cf58832db589ac919eb1c95689a822e"
    else
      url "https://static.ampcode.com/cli/0.0.1783110194-gbf08da/amp-darwin-x64"
      sha256 "ce572dc328dc95e5f3612c09cae327accbd05e04cab151e4ac99211a73f49423"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783110194-gbf08da/amp-linux-arm64"
      sha256 "a44689aa1294f4407d4f5c8fae433426d85e3e600500961600a798acfb2d569e"
    else
      url "https://static.ampcode.com/cli/0.0.1783110194-gbf08da/amp-linux-x64"
      sha256 "225a088713b4df24611ffa032982c26f0c875569b9e4c3f70f0ad386102d8ebf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
