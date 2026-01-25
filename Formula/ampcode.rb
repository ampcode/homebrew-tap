class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769352912-g256385"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769352912-g256385/amp-darwin-arm64"
      sha256 "83737c3444a6581041c302820deb677d4f4da7109b24e5adaf0044c65d844146"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769352912-g256385/amp-darwin-x64"
      sha256 "6b7361ab3c72e1045d6ee74f0df428d515cf6bb64dc3af2d7f54bb85e959cfe2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769352912-g256385/amp-linux-arm64"
      sha256 "f462fce08795dafbfb031d8b4972dfaa28ba9b1de0a9975c68ad83408e86264f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769352912-g256385/amp-linux-x64"
      sha256 "f555b06aedbb8405ea1d9f749e2fc187db5d6bf9911729b2ef332ef68984610f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
