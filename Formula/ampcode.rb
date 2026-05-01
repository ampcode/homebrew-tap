class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777658156-g245240"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777658156-g245240/amp-darwin-arm64"
      sha256 "a95c943695b2e9dcb5bfefa7dd5a57b670f634217b8a4cba691e90a2d3da55cf"
    else
      url "https://static.ampcode.com/cli/0.0.1777658156-g245240/amp-darwin-x64"
      sha256 "8a7b7c563fb4460bdab37d41a742536a4080a2bfecf237acf89ac64d78973c18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777658156-g245240/amp-linux-arm64"
      sha256 "3ac9d7c641a85a206866a43d288107588d2a5ce9a7fefddb1ce84de84e211760"
    else
      url "https://static.ampcode.com/cli/0.0.1777658156-g245240/amp-linux-x64"
      sha256 "2d83eeb861663ef45e106903248d5e46cab3fcc561c10be196df9d6b116ffc7a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
