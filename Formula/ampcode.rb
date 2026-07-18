class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784405652-g14c7e6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784405652-g14c7e6/amp-darwin-arm64"
      sha256 "e04295da1d57854db397afc91987336fa1672bba2dabe25b8a7e293290020dda"
    else
      url "https://static.ampcode.com/cli/0.0.1784405652-g14c7e6/amp-darwin-x64"
      sha256 "ad5e58d8157f383542455bf1f10da4ba1eb8cce09d87bdd902e5c57fef96ffb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784405652-g14c7e6/amp-linux-arm64"
      sha256 "f5593a95026db81e3e9be4435365f417c28722754c27d6884b8d14a49f4245ed"
    else
      url "https://static.ampcode.com/cli/0.0.1784405652-g14c7e6/amp-linux-x64"
      sha256 "d48c21d066355d7594c4c2b92fba4214d21f2d697c09e79e9af6e45fe81fd4ad"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
