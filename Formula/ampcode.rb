class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774253627-g076cc3"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774253627-g076cc3/amp-darwin-arm64"
      sha256 "65ce43b6ec73d9c6cc8df244848dfdba66e975f02bae9c755b44457fce0dba82"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774253627-g076cc3/amp-darwin-x64"
      sha256 "5e087ff6b5bd77dbfe48bd44e5aedf3e5aa94c6734137bd7ae54a5727a17d5ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774253627-g076cc3/amp-linux-arm64"
      sha256 "81fde6fb518aa2015b078cf0797dec5784f75415cea7a4fe2d66afa789878a82"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774253627-g076cc3/amp-linux-x64"
      sha256 "5df111c2e78e4b71979fd5a1c516a8feba7d3f4a16b7066ed77c8799f9620f20"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
