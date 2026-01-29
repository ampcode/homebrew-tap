class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769705328-g15e36c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769705328-g15e36c/amp-darwin-arm64"
      sha256 "a0f9cd0eb99c96945cb8a16cd2c416eaa823d10973cb199b4f28bc72507ce379"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769705328-g15e36c/amp-darwin-x64"
      sha256 "0ac3f176a2ffc8472b5b4759cc4fa26021495e77d21e0649dc6fb28771432ce9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769705328-g15e36c/amp-linux-arm64"
      sha256 "597790980d997331cb5d5efec0498010716410513b61b693f76196ceffe874cf"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769705328-g15e36c/amp-linux-x64"
      sha256 "2c8fd5fb700345a99aaa222007f8e1f898819e5786922968e75cd17b115026a5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
