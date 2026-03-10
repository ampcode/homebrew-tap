class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773159460-g26d9cb"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773159460-g26d9cb/amp-darwin-arm64"
      sha256 "a66fc97dce835063ac2c8fe91d392cb8fb48422f9b350b7a5778b2cc6beeb993"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773159460-g26d9cb/amp-darwin-x64"
      sha256 "7599bd70df247ed323e6ca00c60db67b70b16139c5bf92ec710defaae7f5c6f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773159460-g26d9cb/amp-linux-arm64"
      sha256 "4ab563ad878e338bf54cca71bd2130ab7bf7911c81e7e1b8b22e8949e0f4cf11"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773159460-g26d9cb/amp-linux-x64"
      sha256 "b7866bf596b06749022fee28c4a16c2826449170fbc92fa45b72b994a2cac0ba"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
