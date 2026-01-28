class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769630545-ga38ee4"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769630545-ga38ee4/amp-darwin-arm64"
      sha256 "d242889ea3c071db7d1d671f0134f211a21d8f92762a4dd0fc39d2a081a38f61"
    else
      url "/0.0.1769630545-ga38ee4/amp-darwin-x64"
      sha256 "04e48c32f08a552b07c29a8b5702a58806dd8d4a8d4665cee0eb213b75e49d20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769630545-ga38ee4/amp-linux-arm64"
      sha256 "f4e624e36268e9d235db42d429d9d3b7bbf3c54b428037e1a80bae085eaf6b9a"
    else
      url "/0.0.1769630545-ga38ee4/amp-linux-x64"
      sha256 "efa53bdccc982172092652997b2d0e85a550e476fa091fbb61450e0180f4adad"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
