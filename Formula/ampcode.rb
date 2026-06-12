class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781299371-g102b59"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781299371-g102b59/amp-darwin-arm64"
      sha256 "ebeb3bb83512a8fef4266c619acb9a4daabade0ff79b2ffb1409cba338213614"
    else
      url "https://static.ampcode.com/cli/0.0.1781299371-g102b59/amp-darwin-x64"
      sha256 "d93b031a973d001641406f6f2b740093318e17f1ab654aeb9e74b8f1947e858f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781299371-g102b59/amp-linux-arm64"
      sha256 "52672a7e0d823c1ead0c0184328595317bd0cfad33a7f8f86d84af6232e48892"
    else
      url "https://static.ampcode.com/cli/0.0.1781299371-g102b59/amp-linux-x64"
      sha256 "8eb628d54bbb388f1ae75bd058a89a63464494a3536092ec56f1e8a7ca765946"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
