class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774098052-gaef51a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774098052-gaef51a/amp-darwin-arm64"
      sha256 "c6163a7bef4ba9dca01c59a14e918cbab60cca6e94e1b062e4c43eba32a39b8f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774098052-gaef51a/amp-darwin-x64"
      sha256 "b43f6f2a6405f5955c7f427cc717018aeeaba5c4ba17820a418dbc0a56e10fc6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774098052-gaef51a/amp-linux-arm64"
      sha256 "aabed6eea5a4481486e46a375c6e9227d1324a87d6a1045fa54b43f58ab84072"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774098052-gaef51a/amp-linux-x64"
      sha256 "997f1cb763ff0254506159a33949bfd65ee5cf6625612602970469b35b28def5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
