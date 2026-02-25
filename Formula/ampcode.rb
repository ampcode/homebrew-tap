class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772003388-gaa1ef1"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772003388-gaa1ef1/amp-darwin-arm64"
      sha256 "5919302c7fbdf85e0f60b3f94eb19a93fc16eed2b98eae81aba104dbed0cf556"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772003388-gaa1ef1/amp-darwin-x64"
      sha256 "444a2a66ae551a1a1117ad08ac8770cae87b9a322ba56a6601c1ed8bc0747120"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772003388-gaa1ef1/amp-linux-arm64"
      sha256 "f8acdb46cd3757e5b7e36ff3839593cbc6081c1d8c49362fc5a4c9ec74bf117c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772003388-gaa1ef1/amp-linux-x64"
      sha256 "edef76eae71b0591e2b6872a9a4056f542994493b47828183405d22715c0e60e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
