class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773219707-g14bcca"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773219707-g14bcca/amp-darwin-arm64"
      sha256 "914cc0e83c3e775d0202117e4a94adfeb4e8630a6cb7115e907611d5f048b3f5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773219707-g14bcca/amp-darwin-x64"
      sha256 "ff7131e98a04f5e21c8f9f3e67822c519df55de673c8882bc540e6630fe78974"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773219707-g14bcca/amp-linux-arm64"
      sha256 "168cbe69e60ede7a55b041787ee40604629f210620eb6cc1590e58eabdbfdbf3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773219707-g14bcca/amp-linux-x64"
      sha256 "ec6768fbc428d011972e87a1b6e1b1758ba71ebd10fec484c6b7cab8350484dd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
