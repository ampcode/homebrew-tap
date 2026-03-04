class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772640541-g5421c3"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772640541-g5421c3/amp-darwin-arm64"
      sha256 "830ef354befb91f5311836b96c403a545e71ad1b5c64a8e527c9274295a12bd3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772640541-g5421c3/amp-darwin-x64"
      sha256 "847faa62f46fee447bc994560d4ab0b2cf43bb0831c1b8b3d522841ef9125e9b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772640541-g5421c3/amp-linux-arm64"
      sha256 "c347c03f3e3e9cbeddf3bf798d332b75cbbaf263af8dc2d7c0929d1abcdb4be6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772640541-g5421c3/amp-linux-x64"
      sha256 "a0265a721dae0ef98ba8d2e4fb39ee5dbcf659521a0a2835fcb274411fd6835f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
