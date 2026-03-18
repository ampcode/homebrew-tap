class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773836198-g08fd18"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773836198-g08fd18/amp-darwin-arm64"
      sha256 "7ddf00641bad2f25d75d7a3047cdb8e599fb75a86361a66529a5fcde277fd554"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773836198-g08fd18/amp-darwin-x64"
      sha256 "62cd401c84abc357677e75f1acde6cdcd167dd81bd6bd9c3ae8a6af6353030bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773836198-g08fd18/amp-linux-arm64"
      sha256 "07be9ddb0fe52dfcad0027b3ff5449c2d1a7ad77f90a5f55e0db5437849504e6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773836198-g08fd18/amp-linux-x64"
      sha256 "d1bc3d13864a016b4ed1ba64c41b6bcf6ce8523cf710cc8148d9cbbc1a8e7ac2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
