class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777234127-g973bfa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777234127-g973bfa/amp-darwin-arm64"
      sha256 "f7864e5d92cf6430e0dfeb88d22bb29dc8dd8f49b90e675842c0c6763b8ceb45"
    else
      url "https://static.ampcode.com/cli/0.0.1777234127-g973bfa/amp-darwin-x64"
      sha256 "d5a5ba3cc64be3ab28d049fbaa3d60b7cfdba8e93d962f163cdb0e090e6d89fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777234127-g973bfa/amp-linux-arm64"
      sha256 "7f9a05446f42ec9235e84c2c7d240def335f077f0195db595847ae07ae01b06d"
    else
      url "https://static.ampcode.com/cli/0.0.1777234127-g973bfa/amp-linux-x64"
      sha256 "4af0cb1f0e277ea5ad0cab57a903adea216df96e29d11b2b5cf080ac1608c832"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
