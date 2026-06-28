class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782641874-g901aea"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782641874-g901aea/amp-darwin-arm64"
      sha256 "9b6e98e4dbea8d9064a58511e4898696ac8b67e04cca9d656064dc53f75d5ade"
    else
      url "https://static.ampcode.com/cli/0.0.1782641874-g901aea/amp-darwin-x64"
      sha256 "2314894efaf9a5eca22cc81ced10506917dc866ada4d6b7645a5635e7cb27cc5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782641874-g901aea/amp-linux-arm64"
      sha256 "866b3a407158377576c12d4dde7591c0f9a6775bbac3c1f1cd9744439742c0bf"
    else
      url "https://static.ampcode.com/cli/0.0.1782641874-g901aea/amp-linux-x64"
      sha256 "8b886dd57881fef7f8f3dfac62c3564f719a7013983dcf948feca45c746e0a10"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
