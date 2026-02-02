class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770012659-g1ac3ec"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770012659-g1ac3ec/amp-darwin-arm64"
      sha256 "7e5dd5a33abeec98a0ba69ebe45d9383a66eb780ba90da7de135b3cd4d3a8d73"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770012659-g1ac3ec/amp-darwin-x64"
      sha256 "396399b5ee256ad028c296b34da7af3e661f4aeb7b6af72cf72fdb8de7cb389f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770012659-g1ac3ec/amp-linux-arm64"
      sha256 "fada0c325e6641b403288987c20b279d8cb8b821a521e73ee2b948b27370ab96"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770012659-g1ac3ec/amp-linux-x64"
      sha256 "82a64ed63c326382df4d44c0947f794f0bb53abb8482e16330342dc0fda57073"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
