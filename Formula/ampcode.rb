class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770537808-ga0b38c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770537808-ga0b38c/amp-darwin-arm64"
      sha256 "764823ae607e2333436fea1bbe44ff1c140593f7c269067140216d50cc436f4d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770537808-ga0b38c/amp-darwin-x64"
      sha256 "ad85cf81616358e1f24fad194a8c2a9de8868ff488856f44d848d01dc8c1b10f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770537808-ga0b38c/amp-linux-arm64"
      sha256 "f16727e1254da2f77a22ce65307fcd4db09be28716c52b8de821566fa69ee3b4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770537808-ga0b38c/amp-linux-x64"
      sha256 "c311487a5e10c4ba332019d5fd5b4b2b9d6e34d42a88916493a123c05ea72b03"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
