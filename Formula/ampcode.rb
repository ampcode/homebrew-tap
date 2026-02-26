class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772088759-g22b813"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772088759-g22b813/amp-darwin-arm64"
      sha256 "6172880d20dfdc654ebe6c9850939bf6ac7c9ed9753eb1e946f75f913cd1a166"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772088759-g22b813/amp-darwin-x64"
      sha256 "496fb803bef7c691c26970bc9ec4a1c30889965311f58c3ece2c033de97c332f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772088759-g22b813/amp-linux-arm64"
      sha256 "a7ae9274147cdfbc69ce7daa3a0e37775d97e53f77eb8ad17867d9a455f738aa"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772088759-g22b813/amp-linux-x64"
      sha256 "cbfb0f46520ba6835d41fa1c57e756651bb3ca6dd702776d8d7108718d1734cd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
