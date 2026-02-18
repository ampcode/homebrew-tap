class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771373086-gedddec"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771373086-gedddec/amp-darwin-arm64"
      sha256 "5ce86edc2adbda35684ac5eba7f0fc03168f2a4e8a9a2b4971a467de32575201"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771373086-gedddec/amp-darwin-x64"
      sha256 "810e090374686537ede0e8bc164f94a2ddcca78669f3f5ad581a683381ddb6fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771373086-gedddec/amp-linux-arm64"
      sha256 "7358da9d76de7272cbb7752c9a84d8f6196b9a991df09a605f14f99808221c84"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771373086-gedddec/amp-linux-x64"
      sha256 "de2b12a738da9f31285084518eb6b01b7a8f9f74f22b86f09e85791d40525fea"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
