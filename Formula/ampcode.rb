class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769457689-g5ee1aa"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769457689-g5ee1aa/amp-darwin-arm64"
      sha256 "bcd22176c770f38ae8e924832fa44212089c0be347e626d8814ef60125d0fbce"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769457689-g5ee1aa/amp-darwin-x64"
      sha256 "3c49b85d1c7328666aba764825bc4e0ebc99ce2e362a1c3f94081458f46802b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769457689-g5ee1aa/amp-linux-arm64"
      sha256 "3ad0d6a3881b0c8929bf376d0c7b222526af7178f7c04120a6ec01ec4478ccc0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769457689-g5ee1aa/amp-linux-x64"
      sha256 "c015994b7e89961118ba0f78b8d5fafe6b1682eb5ef3758cc8166677d1620b5d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
