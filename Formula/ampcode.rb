class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771574886-gf1f92c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771574886-gf1f92c/amp-darwin-arm64"
      sha256 "62f5548bc8a28002cf4504f897a9c15d298df09701ceab0d9fc1c79d762e2c9d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771574886-gf1f92c/amp-darwin-x64"
      sha256 "2042abb9c67996510e69ab4114a6e5c3b6be6ced6ea9c26435972e214adffa16"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771574886-gf1f92c/amp-linux-arm64"
      sha256 "12e8ed554fed294d0ef1ac7ff3ad03d7bcd512abcd015574c431dc6abca79318"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771574886-gf1f92c/amp-linux-x64"
      sha256 "2401c86d2d8076dcb50cf070e2b0ab14981f7c9c9cf1f76c5a4327a7d6775453"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
