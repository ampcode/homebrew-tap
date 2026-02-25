class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772036468-gdc13c5"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772036468-gdc13c5/amp-darwin-arm64"
      sha256 "0dce6577095f933e8e6efeb1a82c9f90ccf7239a31e712237ca9e8fcb19b844d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772036468-gdc13c5/amp-darwin-x64"
      sha256 "8a60a3b9b209aa9d592e98c83155bb86e4cb2a34ee0912be8d796474139dd278"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772036468-gdc13c5/amp-linux-arm64"
      sha256 "497b81b228fabb2e84310925325ac1a4e8a29a4233f0dbc6b165d8f1eaa4aa0f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772036468-gdc13c5/amp-linux-x64"
      sha256 "745a6946c8fb445c3373eda59507ea9f708f826691e046903ee0fc37749abd55"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
