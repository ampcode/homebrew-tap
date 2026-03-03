class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772502119-g224ee4"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772502119-g224ee4/amp-darwin-arm64"
      sha256 "18f641b2735ba152d9f2f3d0b6a358590e2748e68cdce03ac503fccfbaedd239"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772502119-g224ee4/amp-darwin-x64"
      sha256 "0bc95c83f545ec0637f66bc5057e39adf37dc4adbe887bd241466c72d4807a41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772502119-g224ee4/amp-linux-arm64"
      sha256 "4e53e32769186aff369f3fa3f972930edec6053b7464ce119dbb703a2ee32c36"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772502119-g224ee4/amp-linux-x64"
      sha256 "92f76fdad6964eef1da875a6196a777787148deb4feaf0912906f5cacd5bc517"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
