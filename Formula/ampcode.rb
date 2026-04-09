class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775736733-geb9a7c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775736733-geb9a7c/amp-darwin-arm64"
      sha256 "7c2e68473647e46b1696afd71526882bec2a90f481edd364e30d6cfabdeeaaaa"
    else
      url "https://static.ampcode.com/cli/0.0.1775736733-geb9a7c/amp-darwin-x64"
      sha256 "fcada4c0f7a8aba028ef7ce852c25254869a9dc4ba3be979e90c89480e027f81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775736733-geb9a7c/amp-linux-arm64"
      sha256 "097a04b4d5a3f9a42458d35b55028a35b63194e813babec98dfd2fd251bc2f3c"
    else
      url "https://static.ampcode.com/cli/0.0.1775736733-geb9a7c/amp-linux-x64"
      sha256 "63487f1dda34996dfcfad944aa8648cd91e5e4174c14d37d373e2e5209b0666a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
