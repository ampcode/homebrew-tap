class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771056176-g5401f5"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771056176-g5401f5/amp-darwin-arm64"
      sha256 "e0532181d3694981375cf844c3720cd6eb04248df6802eb65278b0c931594cb8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771056176-g5401f5/amp-darwin-x64"
      sha256 "ae0cf344eea493013f7002803d4c2d5f177bbc3f1a481068edd5e2f96386574a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771056176-g5401f5/amp-linux-arm64"
      sha256 "c73c815cb6fa09840a89db411a40223c744f279306eadb8a0a2c2a85385bd32f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771056176-g5401f5/amp-linux-x64"
      sha256 "f8a98a38ed9a568e3c6d53d143dee3abe2b2eb84c0d32669e2846a0ee38f007c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
