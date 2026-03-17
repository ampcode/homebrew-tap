class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773746674-ged6c9e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773746674-ged6c9e/amp-darwin-arm64"
      sha256 "7b06f93e51fbfea45eb57c53488c5715679cfdf5b64c9be3ddbe6cb2a0758baf"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773746674-ged6c9e/amp-darwin-x64"
      sha256 "8daf40cbfe8d269c04dc7a206563f57e680ed555af87c5b87242cdbb8b1f07c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773746674-ged6c9e/amp-linux-arm64"
      sha256 "ea63c538656e9dc7eba3ed76e82ce747edb5fdafa7b8c7052e45b29f9dfc159b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773746674-ged6c9e/amp-linux-x64"
      sha256 "bfb8ecc67a09f46c92c38a4f9c940aeb603cbfb6b9c3668423e2790716b1349f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
