class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786662625-ge56cab"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786662625-ge56cab/amp-darwin-arm64"
      sha256 "495ff38d143b4b0ac7904aad5235061df2c1509fb5973f5c469f12f78d5aa633"
    else
      url "https://static.ampcode.com/cli/0.0.1786662625-ge56cab/amp-darwin-x64"
      sha256 "af08f3f47161e9ddbd751928a80b5371f0d29d14174e08b4f418f4e97aba4613"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786662625-ge56cab/amp-linux-arm64"
      sha256 "2ab7fad497c81856481dcc7250f0ea7df10d72502a10afd3945e1a7bbda1fd63"
    else
      url "https://static.ampcode.com/cli/0.0.1786662625-ge56cab/amp-linux-x64"
      sha256 "6c21825a94670b97d3ac36e6157b874fd8c66b2e3b2a6cd75de020a4bf9ae057"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
