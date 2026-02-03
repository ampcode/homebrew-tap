class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770126931-g67ad6a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770126931-g67ad6a/amp-darwin-arm64"
      sha256 "7a8c42fc5c6bde6d81766936f9216f40aed28522a0448a532f7b13ade0d1ed5a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770126931-g67ad6a/amp-darwin-x64"
      sha256 "1be55f8f6c1f7e6e5a9c4ec70cfa1a21245ef6f921620f27455c3a9862f0cd5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770126931-g67ad6a/amp-linux-arm64"
      sha256 "819695855eb3785f600e572e5832f73f537ca8974d5b348641d084e98f73ee3d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770126931-g67ad6a/amp-linux-x64"
      sha256 "c6b633ea35a17e0290594b008451b2b262e7b4e0c7ed120add68f13cf8268a21"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
