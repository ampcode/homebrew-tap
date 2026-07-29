class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785315307-g45b7c1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785315307-g45b7c1/amp-darwin-arm64"
      sha256 "468b30faeec440ca731d4f0bd17194d9e08caaf6de575f1a24647e7e87c45ab7"
    else
      url "https://static.ampcode.com/cli/0.0.1785315307-g45b7c1/amp-darwin-x64"
      sha256 "e66a421988d2e73ba4b91925f5801e553a5ad89dfa3350cdc5b7c36e0eae1c43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785315307-g45b7c1/amp-linux-arm64"
      sha256 "57638a39e980ca882fe45bf881ad16ca48e9e031167ee3f008927d1ce77dca9f"
    else
      url "https://static.ampcode.com/cli/0.0.1785315307-g45b7c1/amp-linux-x64"
      sha256 "6b6388f83dacbb7592212f5c0daf848242f05b9d8da6848ecca55d5705a399bc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
