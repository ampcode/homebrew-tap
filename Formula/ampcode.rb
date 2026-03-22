class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774195348-g48946d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774195348-g48946d/amp-darwin-arm64"
      sha256 "d2672821a372dd7e2e7d0fb77f0dba4530a7dc18be4f01a79092907e6ca38344"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774195348-g48946d/amp-darwin-x64"
      sha256 "13e61af8c56253c37d289549e32fbab208c17a5f249c2963737b52595d1cdab3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774195348-g48946d/amp-linux-arm64"
      sha256 "1286f9f2ce431956a40058bef3d70e22fef6a7edfe857b50c9f76ea66ee8906e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774195348-g48946d/amp-linux-x64"
      sha256 "2ae3ec5dd8e84aaed6ea3d31e8ade5c89b994edefd3a2ff02902d6d892874b19"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
