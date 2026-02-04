class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770231444-g53361d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770231444-g53361d/amp-darwin-arm64"
      sha256 "78c9a483f76f46ada5338a49e9d641334095b3d961c6faf713db04fe7a6635a2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770231444-g53361d/amp-darwin-x64"
      sha256 "1c2f422390f7fc243977e2d07623db931a8a31b6dca69efb36c6feb4e0675898"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770231444-g53361d/amp-linux-arm64"
      sha256 "70ff2ed98217d60355aff32df617a705f6435a183bb04a962b3062dd46ef3784"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770231444-g53361d/amp-linux-x64"
      sha256 "ea58f690c67ea205592136787a69c2b933cf19394297baeac1a74919dbd34881"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
