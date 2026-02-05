class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770331554-g23f8e0"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770331554-g23f8e0/amp-darwin-arm64"
      sha256 "c07507bfac0a3415236e6c41a2f58c1a425613180051323c9307379397e6bf6f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770331554-g23f8e0/amp-darwin-x64"
      sha256 "b7694e536e8107634cc570da6bed534608327ff663984204b46b11e0078205ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770331554-g23f8e0/amp-linux-arm64"
      sha256 "3cda63696d5434490c4be23d64b4b88faaf644babf28aa7dbb9b8e55b729414d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770331554-g23f8e0/amp-linux-x64"
      sha256 "834232f14beefcbff2ba551b667a20e481e1c0d63e26865f83e50cbeaa4071bb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
