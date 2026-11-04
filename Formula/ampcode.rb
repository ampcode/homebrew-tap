class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793793640-g2084a9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793793640-g2084a9/amp-darwin-arm64"
      sha256 "653eb5c69c9d553b020b93f324014d7501db78cfeab42d9229ab9e8fcfd79310"
    else
      url "https://static.ampcode.com/cli/0.0.1793793640-g2084a9/amp-darwin-x64"
      sha256 "3b7257c957b68bae21cdc149a7f16efdf236bac08c3be4fb6e3a491661a2f453"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793793640-g2084a9/amp-linux-arm64"
      sha256 "8cb092a1e0cb752569dc3b7bea044dd6f1a2ec3cd09aa8541ab9ae514de23783"
    else
      url "https://static.ampcode.com/cli/0.0.1793793640-g2084a9/amp-linux-x64"
      sha256 "3f943fbb380db26f502b08c88a047311414d7854d112e81b36b0aaa9f64efaa5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
