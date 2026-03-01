class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772380903-g3d33e9"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772380903-g3d33e9/amp-darwin-arm64"
      sha256 "8f7159b36a6d831b71325d0bbe29d052e0f3577bbd636cf9d6cd7c21fd306586"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772380903-g3d33e9/amp-darwin-x64"
      sha256 "a9846230d0e777112dd2d3108689e0c304deb47c930f56f0c514dd41c47f6396"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772380903-g3d33e9/amp-linux-arm64"
      sha256 "5ee5bf14571f6b39d8ba901f4749e2cde9e4155fc0d228d3a7f8282161d6f3f6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772380903-g3d33e9/amp-linux-x64"
      sha256 "aa703aec7ebceff662189943f765d2015bc1b650ae13672a38249861c67dab5e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
