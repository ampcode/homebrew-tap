class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769515295-g65c888"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769515295-g65c888/amp-darwin-arm64"
      sha256 "b8e46d76761eabfc18fc08ddff468f6d07c9430793bcf8f9095bb2c9226d72a6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769515295-g65c888/amp-darwin-x64"
      sha256 "1ec8660b0a2d838421cfab7baed4440a3da13008a877932ce49811747616dbc6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769515295-g65c888/amp-linux-arm64"
      sha256 "13c66749fd9c988e99a56056f39203a11d8b32ee72bccda25ae0457a669ab390"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769515295-g65c888/amp-linux-x64"
      sha256 "d2a38816c65f0b84b4492e6b6f9ffc6dac02128636f28e695d669b03762cfdc2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
