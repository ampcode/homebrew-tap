class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769492758-gb98cad"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769492758-gb98cad/amp-darwin-arm64"
      sha256 "c1fa3264c41373895d3428a4468c7f44e3a5e73fbdd49925e27a936c4c9b3f56"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769492758-gb98cad/amp-darwin-x64"
      sha256 "c004de62d51e8b556e91f4d8d595a7626ae849fd074a45310acb511ba4a9b4f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769492758-gb98cad/amp-linux-arm64"
      sha256 "f3a043c147a05aeb3010fe95363a2574f2e681f58ab145e8f2c1abac8aa816f7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769492758-gb98cad/amp-linux-x64"
      sha256 "260eae362dcc8297270319aeaa4b03f4e03ac88cd4d518f11209b7260e0b9efb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
