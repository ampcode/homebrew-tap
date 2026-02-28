class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772280107-g5cb360"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772280107-g5cb360/amp-darwin-arm64"
      sha256 "b4e771e8dd0444850148b8d4f2dc1e194e61ed8f752c881b23124c19460c154e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772280107-g5cb360/amp-darwin-x64"
      sha256 "dc915c103c61ef0f5126f8d0e29fcaa8c517d35c923b38249e38599825006d42"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772280107-g5cb360/amp-linux-arm64"
      sha256 "e1fa1c722145e76bdb293c487d9086ae52705ef793d170ae134829a014911866"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772280107-g5cb360/amp-linux-x64"
      sha256 "a8da0a74bd3225575a20f1d464fce775b6d7f1380368e202aadff19a35476fa1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
