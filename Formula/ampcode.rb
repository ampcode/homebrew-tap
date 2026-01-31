class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769817776-gbc1a35"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769817776-gbc1a35/amp-darwin-arm64"
      sha256 "b90481452ded1ebae1ee3ecf54f706c00e21db0ad2e13028af4b9b77d8b6e8cd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769817776-gbc1a35/amp-darwin-x64"
      sha256 "211f9f00cd000cbbf022b0f399aa87dd47c297fccea2ca8614adefead2775d88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769817776-gbc1a35/amp-linux-arm64"
      sha256 "c1734d992f6124939ce903c82508a1922ffdca58427fdd7d5c22df296749d9a0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769817776-gbc1a35/amp-linux-x64"
      sha256 "930d16e7dc94d8c0ae8c24c35ea7e3f3a9f9d040dde6ab93a89c467712fd7c5f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
