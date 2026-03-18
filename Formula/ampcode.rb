class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773849177-g66ce3c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773849177-g66ce3c/amp-darwin-arm64"
      sha256 "ec640b470f8054e323d920d4b5bc1828ee6ec16d6111d913f3f8e73b3de4e36e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773849177-g66ce3c/amp-darwin-x64"
      sha256 "07c33174b7cbc4833b27a13496ce7d2829721342d7a85e0f22f8f41666fbeea7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773849177-g66ce3c/amp-linux-arm64"
      sha256 "2098dbfe713d9955de4cc61710cd90013ac27ccdfe54245579e55d2965c0b0b7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773849177-g66ce3c/amp-linux-x64"
      sha256 "ca0e719d09d456f6ed2142d253f3846d9d09ea7375a5bfc33a197e6edfe9c418"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
