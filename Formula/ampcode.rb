class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772495978-ge2fd2b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772495978-ge2fd2b/amp-darwin-arm64"
      sha256 "680b90035a7e05cb1637035f41d9b43be4868eb3915b6776a0c018724ec05bbe"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772495978-ge2fd2b/amp-darwin-x64"
      sha256 "fadaf4a0d6ce1725c66b80eb8648042c28a139a6900d92a691bd69f59bb2a135"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772495978-ge2fd2b/amp-linux-arm64"
      sha256 "c683b60de6b38fefb1ac01db6f3bb2c790f261c519f3f8b2af82a6f3c3189e42"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772495978-ge2fd2b/amp-linux-x64"
      sha256 "0243a011076333e410bba8be4772831aef82a3b58b232e86aac6469d4f49adbb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
