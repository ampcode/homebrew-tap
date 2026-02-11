class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770840446-gd96216"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770840446-gd96216/amp-darwin-arm64"
      sha256 "892ecccb6e86e9814dca38438e6dbd562f6e6a4c0175d15373c8fec8b2f2c2f6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770840446-gd96216/amp-darwin-x64"
      sha256 "f73b765200daa0a983ebdbd5bee5cda45bd06b39d4f33caab25b77c8c53d917e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770840446-gd96216/amp-linux-arm64"
      sha256 "d3dfc74c6d223c1026b8251ab36686f6caa188f20a9c61c4140dec3f7733ed8f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770840446-gd96216/amp-linux-x64"
      sha256 "f00def125a0f13cffa8a73709f6d8e3142f22ca5db631deee55f4c3541808e63"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
