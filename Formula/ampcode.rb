class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770071482-ga8e577"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770071482-ga8e577/amp-darwin-arm64"
      sha256 "e5788af9e1345c6f051deac8d9256653495b79b85febd95fa3b13a3ae60dbeab"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770071482-ga8e577/amp-darwin-x64"
      sha256 "47a0932741420f7b4d4320c5efde437d58da2b079a2462a52d89d3d601c4ec8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770071482-ga8e577/amp-linux-arm64"
      sha256 "6dbb1cbfed42690ba9298c0e8d2b6d4f801e0e45e874f98ae2c8c7eab9ef6b68"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770071482-ga8e577/amp-linux-x64"
      sha256 "45556502dfc7f2a45212674a2819950c9b8a1e3ef527d1b270b27c83e753d2ce"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
