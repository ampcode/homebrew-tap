class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770408250-g8647bf"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770408250-g8647bf/amp-darwin-arm64"
      sha256 "800fd26ed96a1c1a5a34e52c6eb0c28cbf92ce3b6dfe74c8ada33999756f0d4c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770408250-g8647bf/amp-darwin-x64"
      sha256 "e50d8bdabfa495c4a05186acedb7fb30bf4b93bafe393c34d3533afc723cefeb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770408250-g8647bf/amp-linux-arm64"
      sha256 "c8011648b06867f4bed4ac962f60a43d7e44fc94aa69d08663b4ea69c3004902"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770408250-g8647bf/amp-linux-x64"
      sha256 "ac2fe48193746bdb423eda7c30fad099602739d35ebb1c277679afed9bc2b687"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
