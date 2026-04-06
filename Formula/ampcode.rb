class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775506128-g723f16"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775506128-g723f16/amp-darwin-arm64"
      sha256 "ed3ec29ec426ba830598245b3bd4ed4c48bc6be3eaa0149169366305aef5a30b"
    else
      url "https://static.ampcode.com/cli/0.0.1775506128-g723f16/amp-darwin-x64"
      sha256 "ab16abe5135bf99ab8bd74b4635fa89f5c363766b950d37cf30d6fccddeb702e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775506128-g723f16/amp-linux-arm64"
      sha256 "e7d6dbdd21b762ec71ea3b48f00e4943b7f1476abc86214d13dabb719b6119b1"
    else
      url "https://static.ampcode.com/cli/0.0.1775506128-g723f16/amp-linux-x64"
      sha256 "4fecfe00a42beb375858e06bca94010feedb7ce9108a2e1c658bdf3e5cd96c81"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
