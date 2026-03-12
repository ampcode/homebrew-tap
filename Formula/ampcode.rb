class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773345908-g7c6c67"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773345908-g7c6c67/amp-darwin-arm64"
      sha256 "e436f13c5b3aeab4c558ed354452da2c0bc6c886e01894f1017bc6281d73935f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773345908-g7c6c67/amp-darwin-x64"
      sha256 "57d840461f8eb4623965d867be9c9b6bce8d7d24ae9f458418c74f176b62ac14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773345908-g7c6c67/amp-linux-arm64"
      sha256 "8fe4b82478b294935d581e98f451e36aacbd8f9f83eff0482f97c1bb7eb7e1f0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773345908-g7c6c67/amp-linux-x64"
      sha256 "6e10ba094a02ec068e12ab610b701e2a1bf68a4556d6d2885cefb6bdb83f5423"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
