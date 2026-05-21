class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779340834-gfef6cd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779340834-gfef6cd/amp-darwin-arm64"
      sha256 "6774a50d1ea03b9920da54ae4a6290d29b1977468ba7a21eb778e3a36c40a47e"
    else
      url "https://static.ampcode.com/cli/0.0.1779340834-gfef6cd/amp-darwin-x64"
      sha256 "90eba65a85e8bef1060af52a8d071d19d9abc3d9ad9a91df2eaeea5023dfeb96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779340834-gfef6cd/amp-linux-arm64"
      sha256 "c41121f1a73ea0379333e21ce069f7bd9d4ba9cac213a9b2ae4f26d1bad78ecb"
    else
      url "https://static.ampcode.com/cli/0.0.1779340834-gfef6cd/amp-linux-x64"
      sha256 "093b9625aa7620c876162ef69c80468cccfa8456f732482abd9111963a7d2876"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
