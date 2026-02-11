class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770784921-gc1ce14"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770784921-gc1ce14/amp-darwin-arm64"
      sha256 "58ca96eebf3213a6635f3715e480f613750539ee23c34d682fb7e03e24c7c880"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770784921-gc1ce14/amp-darwin-x64"
      sha256 "2dc877a3ae26a299984a1082a164067cc46049a25a24276ee88591730e2f691b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770784921-gc1ce14/amp-linux-arm64"
      sha256 "6a72d65a217f9e9d6b9f1865961516e57827cebcdfefda3ce623ca3917fbc95b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770784921-gc1ce14/amp-linux-x64"
      sha256 "5910eca51e3d2c6b912511c1e038ae337d7efef2fe2f192d9c944bdf1c62d915"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
