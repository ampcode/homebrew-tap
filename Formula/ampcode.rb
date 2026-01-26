class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769401422-gb3f930"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769401422-gb3f930/amp-darwin-arm64"
      sha256 "8b8683c6ec8df3edf7b1617ffa3d14032721b1b88bed07e893e1118016d919a1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769401422-gb3f930/amp-darwin-x64"
      sha256 "34deb6ac676de8fbfdddef92aeb4d9e73846d0a02f540fb153a8a90e7ff8f17e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769401422-gb3f930/amp-linux-arm64"
      sha256 "32ea154e74756ecee8767f9f665e9cdc390080852dfa17ba2f73e78b2a0c3c5d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769401422-gb3f930/amp-linux-x64"
      sha256 "6c541835bfabb85e04425bd914f3e91f685b7ef1df6f8b6638433528cf786571"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
