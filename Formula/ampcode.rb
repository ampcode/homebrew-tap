class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777363293-gde6197"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777363293-gde6197/amp-darwin-arm64"
      sha256 "4d70e3389e8a42961b6126c24b8826630dc337a1184da579bab2ce263dcf7e62"
    else
      url "https://static.ampcode.com/cli/0.0.1777363293-gde6197/amp-darwin-x64"
      sha256 "e725c94f5f6670f4b801a51d2fefc6f2192d3db32f18a50ecf8b18d994f977cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777363293-gde6197/amp-linux-arm64"
      sha256 "e858cd6f07a8b4ce5cb47e0b543e288edd43849dec805816024c51ec36b265a8"
    else
      url "https://static.ampcode.com/cli/0.0.1777363293-gde6197/amp-linux-x64"
      sha256 "e141c83a3a9514ffbf06c47e7e860abffd7031476dd5210cc1a5104ceaedeb20"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
