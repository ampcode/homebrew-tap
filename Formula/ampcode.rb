class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771229326-gd5b17a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771229326-gd5b17a/amp-darwin-arm64"
      sha256 "d1a90ac27dbac4651f8fca53f8113bbe29fdea03895e3c4a6cf7d1e551ba3703"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771229326-gd5b17a/amp-darwin-x64"
      sha256 "4527de47d35a7c8caff3e2c4b5c84b0fd9c68fe51b079fa08ae1d6eecfb3d82f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771229326-gd5b17a/amp-linux-arm64"
      sha256 "5b86df8c6ee013bf29bce1888a3c861b6ff92ca6c3a80aaa6100dfc21ceaa891"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771229326-gd5b17a/amp-linux-x64"
      sha256 "7c80a14e2130b47a820c67aff6416b4d1cbf62a1d47d5bdc6993fd3e137c872d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
