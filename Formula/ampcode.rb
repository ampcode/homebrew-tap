class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789502449-gfb9ae9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789502449-gfb9ae9/amp-darwin-arm64"
      sha256 "5c87bb5a59d6cf225ace3786268b14a54ea1a6da8e5615b82b9e6eb665fda984"
    else
      url "https://static.ampcode.com/cli/0.0.1789502449-gfb9ae9/amp-darwin-x64"
      sha256 "b7f97b9f82f66d2c0dd9919ec76bee59b72bd47e86f9b648511231852f5985ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789502449-gfb9ae9/amp-linux-arm64"
      sha256 "647c4f8211755bc21dd2eb61d98f7db3a00c7fe5957bc2c4c5c536db81089009"
    else
      url "https://static.ampcode.com/cli/0.0.1789502449-gfb9ae9/amp-linux-x64"
      sha256 "0580bfa748b139f04929d2cb081e5d13563d699e8c5b12809521a1ae87d7d8ba"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
