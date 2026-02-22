class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771790496-g01e42b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771790496-g01e42b/amp-darwin-arm64"
      sha256 "adb2bc0e9a0cf6ecf8d47ef4672441e2c3eadb4512feede233ac1ce8994f7e4a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771790496-g01e42b/amp-darwin-x64"
      sha256 "9224ff0401bc2c4eaeec5698f36a827f5b7a9304e0cd573575d0f4149cfc8b39"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771790496-g01e42b/amp-linux-arm64"
      sha256 "9b89550700c56946f8c5a108cf9292e99da00c401206cb6a1f93e3728cb04e12"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771790496-g01e42b/amp-linux-x64"
      sha256 "82121789860dc95aa407c7c39bca0867890002dc015629853d6616da640ed78d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
