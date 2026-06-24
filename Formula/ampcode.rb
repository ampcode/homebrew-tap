class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782323126-g1beb61"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782323126-g1beb61/amp-darwin-arm64"
      sha256 "174b60b76dce97c02965ce9d7dad594fdcc02dee57e15732e065be79a874bb52"
    else
      url "https://static.ampcode.com/cli/0.0.1782323126-g1beb61/amp-darwin-x64"
      sha256 "df3cbfc6c913c53f33f5dc502844f4d3b2247674b1174f8154143f6a7f30faf0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782323126-g1beb61/amp-linux-arm64"
      sha256 "c20bb59f1832e9c541f44b4d91dc8d433b6178f99cb61b2d808f4a10f91bfe37"
    else
      url "https://static.ampcode.com/cli/0.0.1782323126-g1beb61/amp-linux-x64"
      sha256 "452b330add8a2d02ca5c164ce2b5d6e32ed8a31bd76bdf4088a46e672eca0f77"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
