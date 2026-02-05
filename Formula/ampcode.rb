class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770293119-gc187f5"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770293119-gc187f5/amp-darwin-arm64"
      sha256 "d581675cfb9500bd3b8a21dafdcb007c81c7686093bcb8b6edc1b64737988dc4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770293119-gc187f5/amp-darwin-x64"
      sha256 "275f380cdac90432e8d31c0765269dd4f74213643afd4deeb10a6aa3cdd0e6da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770293119-gc187f5/amp-linux-arm64"
      sha256 "e6e59d9b606e92765bac570c98d3072da8dd037f62d2071f0583f8b5dfdbaed3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770293119-gc187f5/amp-linux-x64"
      sha256 "6068a63c727bd38224c0b0db3d59b61f00f6b2ebd7537981e2f28ab60038ca20"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
