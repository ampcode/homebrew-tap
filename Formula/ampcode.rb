class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771080887-g92c3a6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771080887-g92c3a6/amp-darwin-arm64"
      sha256 "07cb23a8c306d9df6aca98da07ad8becff36755dd56838d26029213cb7f622e9"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771080887-g92c3a6/amp-darwin-x64"
      sha256 "f2feb3641bef90278fb09604a7f2a87fc6eaa6d8812632d63065311e03592107"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771080887-g92c3a6/amp-linux-arm64"
      sha256 "baecaccf2fe961ef9ce3730acd74974dc7d2c8b58805b5251fa41cea29a3ca03"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771080887-g92c3a6/amp-linux-x64"
      sha256 "a8aa208f282b850269d442ac65d7da01bcae7541cea5e65fddc2fa163e71c177"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
