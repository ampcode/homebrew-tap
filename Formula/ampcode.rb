class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773389256-ga2bc61"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773389256-ga2bc61/amp-darwin-arm64"
      sha256 "4c8c6808cac856e8b3eacab34569da8e6c9a093445d6bd8d5ff57d76e5c9b0f7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773389256-ga2bc61/amp-darwin-x64"
      sha256 "3dfb0699e24c7ff9592a61b5b46e2e600c4e0dc0c7a27ca74990b60bb9d9dee2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773389256-ga2bc61/amp-linux-arm64"
      sha256 "3e9d4343c1afdace0b88a7d1b9e7e141a72499be634cc2da363c7da41a43540e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773389256-ga2bc61/amp-linux-x64"
      sha256 "f632b7dafbe084a5dd37ca8897da0b3325d826575786e243724c95432e3b7ca0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
