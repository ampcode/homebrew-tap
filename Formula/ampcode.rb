class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784723341-gdf46d0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784723341-gdf46d0/amp-darwin-arm64"
      sha256 "998578102cd9089b00e2417f5925626b2ff492a3cc69086d394fa26cedac3522"
    else
      url "https://static.ampcode.com/cli/0.0.1784723341-gdf46d0/amp-darwin-x64"
      sha256 "3d7f2b21b3d405ef75e2a8664f4d16af64fd38a5c216e5f510de5d3e4ae4e3a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784723341-gdf46d0/amp-linux-arm64"
      sha256 "2941cf6e6a29e9c211e17e379dfdfc5009627b5f6adda9f46986c1dbe893bbcc"
    else
      url "https://static.ampcode.com/cli/0.0.1784723341-gdf46d0/amp-linux-x64"
      sha256 "916dd2ec026a0cf93948657f49657b066de18588e8c6b7213d0364ff0f74ad0e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
