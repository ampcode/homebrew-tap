class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783024028-gf45968"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783024028-gf45968/amp-darwin-arm64"
      sha256 "5cff4e80e6b1a3a2b20c7ce10c302bda1a9a87967513ec28e5ac863916feab08"
    else
      url "https://static.ampcode.com/cli/0.0.1783024028-gf45968/amp-darwin-x64"
      sha256 "d7fda982b5bf681dc1c3cedf3bbe6c25e8fe0c8dc12d959e11163c79f9782ac3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783024028-gf45968/amp-linux-arm64"
      sha256 "5a39d394f6b93e4d04b5b56f40d286f506f8342bd55a124206c06bcd9baa09e6"
    else
      url "https://static.ampcode.com/cli/0.0.1783024028-gf45968/amp-linux-x64"
      sha256 "d2395fe0ca6a2df150485e23e4c21ebc2ebc1c9f8da4a0eacd85e535afbbd5c4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
