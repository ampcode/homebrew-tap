class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787932668-ged2488"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787932668-ged2488/amp-darwin-arm64"
      sha256 "895e0c7f82d477c1fd48766fc56c5f69c29daa58513523bc2a2cfefdf7e593f9"
    else
      url "https://static.ampcode.com/cli/0.0.1787932668-ged2488/amp-darwin-x64"
      sha256 "efb52aad3ea2ea25af2eba16d255578b9dfac0bd8bbf20fa9f65c1371b60425c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787932668-ged2488/amp-linux-arm64"
      sha256 "bd522352c2a73646b4f490f11358e820e0eefa611eb0df36123281f92d08aa43"
    else
      url "https://static.ampcode.com/cli/0.0.1787932668-ged2488/amp-linux-x64"
      sha256 "1010dc14fc409cb69c6aff823d7d1e9a5240fd4784e2e8fce340f4aadd03b397"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
