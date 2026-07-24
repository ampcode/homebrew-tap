class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784924859-g1d9e3d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784924859-g1d9e3d/amp-darwin-arm64"
      sha256 "1694ffea2e2d25a7fca6cbac23261ebdff9242fb59fd62810198dc41aee0e9ef"
    else
      url "https://static.ampcode.com/cli/0.0.1784924859-g1d9e3d/amp-darwin-x64"
      sha256 "55bdd9422a98bbd199f0066a48eca12eaa4a9d34b37fb0d59d0897a3d438e21f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784924859-g1d9e3d/amp-linux-arm64"
      sha256 "27779d5496152d98bec78c3c9cc3e9eaee735129a80b0017b9fe2ca1dd75a545"
    else
      url "https://static.ampcode.com/cli/0.0.1784924859-g1d9e3d/amp-linux-x64"
      sha256 "cecd044c1938d3a7f2f3828eabf74852f9bb224a50cb538383a42c70540b0839"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
