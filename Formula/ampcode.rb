class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773863838-g6365ed"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773863838-g6365ed/amp-darwin-arm64"
      sha256 "282b7597c7b0661bf32d9ff5d05660a02ed09e59805214ccbb2146c94d699a21"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773863838-g6365ed/amp-darwin-x64"
      sha256 "f8b7703a3063c0b41d9861ad9667287e1e0ff6f78504b2db7bea5279335075a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773863838-g6365ed/amp-linux-arm64"
      sha256 "1ee3d80ea7f7983430e639b6f2fb78b306b40b9c4a3e6d2cca0c7cd6287ede35"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773863838-g6365ed/amp-linux-x64"
      sha256 "d0495be42fc112885965787051c5589e36b8f2c9383463135c4c767fb45d7a54"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
