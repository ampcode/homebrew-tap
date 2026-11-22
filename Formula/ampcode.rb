class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795363233-gbb6f68"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795363233-gbb6f68/amp-darwin-arm64"
      sha256 "1745f552793a07752c1433acf37acdd6fdc974fca06595ff3af6ee863042bce0"
    else
      url "https://static.ampcode.com/cli/0.0.1795363233-gbb6f68/amp-darwin-x64"
      sha256 "11c0f530b429a94bfdf81c1b4c7c67f9451fe7188a1de2416d663f48a2af4870"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795363233-gbb6f68/amp-linux-arm64"
      sha256 "fc25e0ccd13f2b5097f1b655f6912e33e3141b83811479171024f0f08fa1b3fb"
    else
      url "https://static.ampcode.com/cli/0.0.1795363233-gbb6f68/amp-linux-x64"
      sha256 "ea144f08f3e1f2a9b65493fd2b663f3f8d33ba960dd4047aea071ccefd5ca51f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
